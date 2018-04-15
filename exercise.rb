require_relative 'event'
require_relative 'dhh'

event1 = Event.new("IssueEvent", 7)
event2 = Event.new("IssueCommentEvent", 6)
event3 = Event.new("PushEvent", 5)
event4 = Event.new("PullRequestReviewCommentEvent", 4)
event5 = Event.new("WatchEvent", 3)
event6 = Event.new("CreateEvent", 2)
event7 = Event.new("AnyOtherEvent", 1)

new_dhh = Dhh.new("new Dhh")

new_dhh.add_events_to_hash(event1)
new_dhh.add_events_to_hash(event2)
new_dhh.add_events_to_hash(event3)
new_dhh.add_events_to_hash(event4)
new_dhh.add_events_to_hash(event5)
new_dhh.add_events_to_hash(event6)
new_dhh.add_events_to_hash(event7)

puts "DHHs github score is #{new_dhh.total_points}"
