require_relative 'event'

class Dhh

  attr_accessor :title
  attr_accessor :all_events

  def initialize(title)
    @title = title
    @all_events = Hash.new(0)
  end

  def add_events_to_hash(event)
    @all_events[event.event_type] += event.score
  end

  def total_points
    @all_events.values.reduce(0, :+)
  end

end
