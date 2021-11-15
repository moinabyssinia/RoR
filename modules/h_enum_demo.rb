array = [1,2,3,4,5,6]
hash = {name: "jason", position: "teacher", location: "treehouse"}

# map always returns array
hash.map { |key, value| key }

# inject is more like an accumulator in JS
puts array.inject { |sum, element| sum += element }

# specifying the initial value for the sum
puts array.inject(10) { |sum, element| sum += element }
