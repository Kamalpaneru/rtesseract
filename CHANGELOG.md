## v2.0.0

#### Added

* Support to options --tessdata-dir, --user-words and --user-patterns
* Ruby 2.3.0 to travis tests.

#### Changed

* Refactoring of some classes
* Crop options is a hash with x,y,w,h keys.
* Areas of RTesseract::Mixed now changed :width to :w and :height to :h.

#### Removed

* Support to quick_magick gem.
