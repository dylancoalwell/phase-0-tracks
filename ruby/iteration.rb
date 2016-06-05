animals = ["cat", "dog", "horse", "mouse", "goldfish"]

cars = {
	ford: "mustang", 
	toyota: "corolla", 
	honda: "civic", 
	chrysler: "sebring"
}

puts "This is before the code."
p animals
p cars

animals.each {|animal| puts "#{animal} is awesome!"}
cars.each {|car| puts "#{car} is a great car!"}
puts "This is after the code."

p animals
p cars

puts "Original data:"
p animals

new_animals = []
p new_animals

new_animals = animals.map do |animal|
	animal.upcase
end

puts "After .map:"
p animals
p new_animals

p animals
p cars

puts "Original data:"
p animals

animals.map! do |animal|
	animal.upcase
end

puts "After .map!:"
p animals

puts "Original data:"
p cars
p new_cars = {}

new_cars = cars.map do |make, model|
{make.upcase => model}
end

puts "After .map:"
p cars
p new_cars

Numbers = [6, 2, 3, 4, 5, 6, 7, 8]
Letters = {ckajdflak: "kfajkdf", asdfk: "fjklajaf", lyifads: "lkafjal"}

##delete
Numbers.delete_if{|x| x > 5}
p Numbers

Letters.delete_if{|chrs, value| chrs.length > 6}
p Letters

##select
Numbers.select!{|x| x > 5}
p Numbers

Letters.select!{|chrs, value| chrs.length > 6}
p Letters


##REject
Numbers.reject!{|x| x > 5}
p Numbers

Letters.reject!{|chrs, value| chrs.length > 6}
p Letters


new_numbers = Numbers.drop_while{|x| x > 5}
p new_numbers

new_letters = Letters.drop_while{|chrs, value| chrs.length > 6}
p new_letters
=end