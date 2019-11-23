class Timer
  attr_accessor :seconds 

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = @seconds % 3600
    sprintf("%.2d:%.2d:%.2d", hours, minutes/60, @seconds % 60)
  end
  
end