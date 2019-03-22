def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.collect {|name| badge_maker(name)}
end

def assign_rooms(attendees)
  room_number = 0
  attendees.collect do |name|
    room_number += 1
    "Hello, #{name}! You'll be assigned to room #{room_number}!"
  end
end

def printer(attendees)
  #badge_messages = batch_badge_creator(attendees)
  #room_assignments = assign_rooms(attendees)
  badge_messages(attendees).each {|badge_message| puts badge_message}

  end
  room_assignments.each do |room_assignment|
    puts room_assignment
  end



end
