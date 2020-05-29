require "./spec_helper"

describe StepsCalculator do
  # TODO: Write tests

  it "calculates steps for month" do
    File.file_contents = "01-mar-2019 - 123\n02-mar-2019 - 456\n01-jun-2019 - 123\n02-jun-2019 - 456"
    StepsCalculator.read_and_parse.should eq({
      "perMonth"   => {"3-2019" => 579, "6-2019" => 579},
      "totalSteps" => 1158,
    })
  end

  it "returns 0 when the results are empty" do
    File.file_contents = "\n\n"
    StepsCalculator.read_and_parse.should eq({
      "perMonth"   => {} of String => Int32,
      "totalSteps" => 0,
    })
  end

  it "returns results for multiple years" do
    File.file_contents = "01-mar-2019 - 123\n02-mar-2019 - 456\n01-jun-2019 - 123\n02-jun-2018 - 456"
    StepsCalculator.read_and_parse.should eq({
      "perMonth"   => {"3-2019" => 579, "6-2019" => 123, "6-2018" => 456},
      "totalSteps" => 1158,
    })
  end
end
