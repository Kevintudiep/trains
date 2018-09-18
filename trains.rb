trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#
# direction111 = trains[7][:direction]
# puts direction111
#
# freq80b = trains[5][:frequency_in_minutes]
# puts freq80b
#
# direction610 = trains[2][:direction]
# puts direction610
# #
# puts 'Questions 1-3'


north_table = []
#Remember this is going through each iteration of |train| which equals to the value of each hash(single item, just contains multiple variables) (which is the value of the array!)

trains.each do |train|
  if train[:direction] == "north"
    north_table << train
  end
end

puts north_table

#Question 4

east_table =[]

trains.each do |train|
  if train[:direction] == 'east'
    east_table << train
  end
end

puts east_table

puts '-----'

def find_by_directions(trains, direction)
  empty_array = []
  trains.each do |train|
    if train[:direction] == direction
      empty_array << train
    end
  end
  return empty_array
end


puts find_by_directions(trains, 'north')

puts find_by_directions(trains, 'east')



trains[0][:first_depareture_time] = 6
puts trains[0]

#
# trains.each do |trains|
#   if trains[:direction] == "north"
#     return true
#     puts "---"
#   end
# end

# def find_by_directions(trains, direction)
#   new_array = []
#   trains.each do |trains|
#     if trains[:direction] == direction
#       puts '---'
#     end
#   end
# end
#
# puts find_by_directions(trains, 'north')
