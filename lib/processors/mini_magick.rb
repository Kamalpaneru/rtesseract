# encoding: UTF-8
# Add to rtesseract a image manipulation with MiniMagick
module RTesseract::Processor::MiniMagickProcessor
  def self.setup
    require 'mini_magick'
  end

  def self.a_name?(name)
    %w(mini_magick MiniMagickProcessor).include?(name.to_s)
  end

  def self.image_to_tif(source, _points = {})
    tmp_file = Tempfile.new(['', '.tif'])
    cat = source.is_a?(Pathname) ? read_with_processor(source.to_s) : source
    cat.format('tif') do |c|
      c.compress 'None'
      c.alpha 'off'
    end
    cat.crop("#{_points[:w]}x#{_points[:h]}+#{_points[:x]}+#{_points[:y]}") if _points.is_a?(Hash) && _points.values.compact != []
    cat.alpha 'off'
    cat.write tmp_file.path.to_s
    tmp_file
  end

  def self.read_with_processor(path)
    MiniMagick::Image.open(path.to_s)
  end

  def self.image?(object)
    object.class == MiniMagick::Image
  end
end
