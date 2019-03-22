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
  batch_badge_creator(attendees).each {|badge_message| puts badge_message}

  assign_rooms(attendees).each {|room_assignment| puts room_assignment}

end
