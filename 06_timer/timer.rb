class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    @seconds -= hours * 3600
    minutes = @seconds / 60
    @seconds -= minutes * 60
    hours = hours.to_s
    minutes = minutes.to_s
    @seconds = @seconds.to_s
    if hours.length == 1
      hours = hours.insert(0, "0")
    end
    if minutes.length == 1
      minutes = minutes.insert(0, "0")
    end
    if @seconds.length == 1
      @seconds = @seconds.insert(0, "0")
    end
    return hours.to_s + ":" + minutes.to_s + ":" + @seconds.to_s
  end

end
