require 'colorize'
require 'rest-client'
require 'json'
require 'pry'

class Exercise

  EVENT_TYPE = { 'IssuesEvent' => 7,
                 'IssueCommentEvent' => 6,
                 'PushEvent' => 5,
                 'PullRequestReviewCommentEvent' => 4,
                 'WatchEvent' => 3,
                 'CreateEvent' => 2 }

  def initialize(url)
    response = RestClient.get(url)
    @hash = JSON.parse(response)
  end

  def total_numbers_of_events
    total = 0
    @hash.each do |array_of_hash|
      current_value = EVENT_TYPE.fetch(array_of_hash['type'],1)
      total = total + current_value
    end
    return total
  end
end

event = Exercise.new('https://api.github.com/users/dhh/events/public')
puts event.total_numbers_of_events
