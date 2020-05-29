# TODO: Write documentation for `StepsCalculator`
module StepsCalculator
  extend self
  VERSION = "0.1.0"

  # Doing more than one thing
  def read_and_parse
    # No injection for the File reader
    steps_file_content = File.read("data/steps.txt")
    days = steps_file_content.scan(/^([\d]+-[\w]{3}-[\d]+) - (\d+)$/m)

    total_steps = 0
    grouped_by_year_month = Hash(String, Int32).new

    days.each do |day|
      steps_time = Time.parse(day[1], "%d-%h-%Y", Time::Location::UTC)
      result_month_year = "#{steps_time.month}-#{steps_time.year}"

      if !grouped_by_year_month[result_month_year]?
        grouped_by_year_month[result_month_year] = 0
      end

      grouped_by_year_month[result_month_year] += day[2].to_i

      total_steps += day[2].to_i
    end

    {"perMonth" => grouped_by_year_month, "totalSteps" => total_steps}
  end
end
