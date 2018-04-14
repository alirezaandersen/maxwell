class Event

  attr_accessor :event_type
  attr_accessor :score

  def initialize(event_type, score = 0 )
    @event_type = event_type
    @score = score
  end
end
