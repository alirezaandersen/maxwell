class DHH

  attr_accessor :title
  attr_accessor :all_events

  def initialize(title)
    @title = title
    @all_events = Hash.new(0)
  end

  def add_events_to_hash(event)
   @all_events[event_type.name] += event.score
 end


end
