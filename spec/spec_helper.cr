require "spec"
require "../src/steps_calculator"

class File
  @@file_contents = "01-mar-2019 - 123\n02-mar-2019 - 456\n01-jun-2019 - 123\n02-jun-2019 - 456"

  def self.file_contents=(name : String)
    @@file_contents = name
  end

  def self.read(name : String)
    @@file_contents
  end
end
