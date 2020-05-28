# TODO: Write documentation for `StepsCalculator`
module StepsCalculator
  extend self
  VERSION = "0.1.0"

  def readAndParse
    # No injection for the File reader
    stepsFileContent = File.read("data/steps.txt")
    days = stepsFileContent.scan(/^([\d]+-[\w]{3}-[\d]+) - (\d+)$/m)

    totalSteps = 0
    groupedByYearMonth = Hash(String, Int32).new

    days.each do |day|
      stepsTime = Time.parse(day[1], "%d-%h-%Y", Time::Location::UTC)
      resultMonthYear = "#{stepsTime.month}-#{stepsTime.year}"

      if !groupedByYearMonth[resultMonthYear]?
        groupedByYearMonth[resultMonthYear] = 0
      end

      groupedByYearMonth[resultMonthYear] += day[2].to_i

      totalSteps += day[2].to_i
    end

    {"perMonth" => groupedByYearMonth, "totalSteps" => totalSteps}
  end
end
