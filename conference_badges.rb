def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badge_messages = []
  attendees.each do |name|
    badge_messages << badge_maker(name)
  end
  badge_messages
end

def assign_rooms(attendees)
  room_number = 0
  attendees.collect do |name|
    room_number += 1
    "Hello, #{name}! You'll be assigned to room #{room_number}!"
  end
end

def printer(attendees)
  badge_messages = batch_badge_creator(attendees)
  room_assignments = assign_rooms(attendees)
  badge_messages.each do |badge_message|
    puts badge_message
  end
  room_assignments.each do |room_assignment|
    puts room_assignment
  end



end
