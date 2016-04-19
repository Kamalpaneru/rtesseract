# encoding: UTF-8
require 'nokogiri'
require 'fileutils'

class RTesseract
  # Class to read char positions from an image
  class Box < RTesseract
    def initialize_hook
      @value, @points = [[], {}]
    end

    def config_hook
      @options['tessedit_create_hocr'] = 1 # Split Words configuration
    end

    def words
      convert if @value == []
      @value
    end

    def file_ext
      '.hocr'
    end

    def parse_file
      html = Nokogiri::HTML(File.read(text_file_with_ext))
      html.css('span.ocrx_word, span.ocr_word')
    end

    def convert_text
      text_objects =  []
      parse_file.each { |word| text_objects << BoxParser.new(word).to_h }
      @value = text_objects
    end

    def after_convert_hook
      FileUtils.mv(text_file_with_ext('.html'), text_file_with_ext) rescue nil
    end

    # Output value
    def to_s
      return @value.map { |word| word[:word] } if @value != []
      if @processor.image?(@source) || @source.file?
        convert
        @value.map { |word| word[:word] }.join(' ')
      else
        fail RTesseract::ImageNotSelectedError.new(@source)
      end
    end

    # Parse word data from html.
    class BoxParser
      def initialize(word_html)
        @word = word_html
        title = @word.attributes['title'].value.to_s
        @attributes = title.gsub(';', '').split(' ')
      end

      def to_h
        {
          word: @word.text,
          x_start: @attributes[1].to_i,
          y_start: @attributes[2].to_i,
          x_end: @attributes[3].to_i,
          y_end: @attributes[4].to_i
        }
      end
    end
  end
end
