require_relative 'event'

event1 = Event.new("IssueEvent", 7)
event2 = Event.new("IssueCommentEvent", 6)
event3 = Event.new("PushEvent", 5)
event4 = Event.new("PullRequestReviewCommentEvent", 4)
event5 = Event.new("WatchEvent", 3)
event6 = Event.new("CreateEvent", 2)
event7 = Event.new("AnyOtherEvent", 1)
