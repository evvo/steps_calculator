require "spec"
require "../src/steps_calculator"

class File
  @@fileContents = "01-mar-2019 - 123\n02-mar-2019 - 456\n01-jun-2019 - 123\n02-jun-2019 - 456"

  def self.fileContents=(name : String)
    @@fileContents = name
  end

  def self.read(name : String)
    @@fileContents
  end
end
