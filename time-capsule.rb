

things = []

print "Hi! What is your name?: "
name = gets.chomp

puts "Please, list items you want to put into Time Capsule."

item = nil

loop do
  print "> "
  item = gets.chomp.downcase.capitalize
  break if item == 'Finished'
  things << item
end

puts "\n#{name} thanks for trying our Time Capsule maker."
puts "Here is a list of the items in your Time Capsule!"

things_uniq = things.uniq
things_uniq.each {|thing| puts "* " + thing + " (#{things.count(thing)})"}
