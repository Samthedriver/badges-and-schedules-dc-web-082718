# Write your code here.
def badge_maker(name)
  message = "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  badge_array = Array.new

  name_array.each do |name|
    badge_array.push(badge_maker(name))
  end
  badge_array
end

def assign_rooms(speakers)
  room_assigned = 1
  room_assignments = Array.new

  speakers.each do |name|
    message = "Hello, #{name}! You'll be assigned to room #{room_assigned}!"
    room_assignments.push(message)
    room_assigned += 1
  end

  room_assignments
end

def printer(attendees)
  badge_messages = Array.new
  room_assignments_message = Array.new

  badge_messages = batch_badge_creator(attendees)
  badge_messages.each do |attendees_message|
    puts attendees_message
  end

  room_assignments_message = assign_rooms(attendees)
  room_assignments_message.each do |attendees_message|
    puts attendees_message
  end
end
