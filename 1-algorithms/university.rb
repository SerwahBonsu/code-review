class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

  def acceptance_rate
    float_before_calc = self.application_stats["accepted"].to_f/self.application_stats["applied"].to_f
    percent_before_calc = float_before_calc*100
    percent_before_calc.to_i
  end

  def self.low_acceptance_count(universities)
    result = []
    acceptance = universities.map {|university| university.acceptance_rate}
    acceptance.each do |percentage|
      if percentage < 50
      result << percentage
      end
      end
      result.length
  end

end
