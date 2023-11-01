# Write your code here.
require "pry"


def badge_maker(speaker)
  return "Hello, my name is #{speaker}."
end

def batch_badge_creator(array)
  spit = array.map do |name|
    "Hello, my name is #{name}."
  end
  return spit
end

def assign_rooms(speakers)
  rooms = []
  speakers.each_with_index do |speaker, index|
    room = index +1
    agent = "Hello, #{speaker}! You'll be assigned to room #{room}!"
    rooms << agent
  end
  return rooms
end

def printer(attendees)
  badge = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)

  badge.each do |person|
    puts person
  end
  rooms.each do |person|
    puts person
  end
end

binding.pry