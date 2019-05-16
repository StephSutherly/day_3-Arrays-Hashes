# EXERCISE A
# Complete these tasks:
# Add "Edinburgh Waverley" to the end of the array
# Add "Glasgow Queen St" to the start of the array
# Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
# Work out the index position of "Linlithgow"
# Remove "Livingston" from the array using its name
# Delete "Cumbernauld" from the array by index
# How many stops there are in the array?
# How many ways can we return "Falkirk High" from the array?
# Reverse the positions of the stops in the array
# Print out all the stops using a for loop

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
stops.push("Edinburgh Waverley")
stops.unshift("Glasgow Queen St")
stops.insert(4,"Polmont")
p stops.index "Linlithgow"
stops.delete("Livingston")
stops.delete_at(2)
p stops.length

p stops[2]
#Line 10 = 1?
p stops.reverse

for stop in stops
  p stop
end

p stops

#EXERCISE B
# Complete these tasks:
# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
# Get Erik's hometown
# Get the array of Erik's lottery numbers
# Get the type of Avril's pet Monty
# Get the smallest of Erik's lottery numbers
# Return an array of Avril's lottery numbers that are even
# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
# Change Erik's hometown to Edinburgh
# Add a pet dog to Erik called "Fluffy"
# Add another person to the users hash

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

#1
p users["Jonathan"][:twitter]
#2
p users["Erik"][:home_town]
#3
p users["Erik"][:lottery_numbers]
#4
avril_pets = users["Avril"][:pets]
p avril_pets[0][:species]
#5
erik_lotto = users["Erik"][:lottery_numbers]
p erik_lotto.min
#6
avril_lotto = users["Avril"][:lottery_numbers]
avril_lotto.each do |num|
  if num % 2 == 0
    p num
  end
end
#7
p erik_lotto.push(5)
#8
users ["Erik"][:home_town] = "Edinburgh"
p users["Erik"]
#9
erik_pets = users["Erik"][:pets]
erik_pets[4] = {name: "Fluffy", species: "dog",}
p erik_pets
#10
users ["Steph"] = {
  :home_town => "East_London_SA",
  :fave_colour => "green"
}
p users["Steph"]

# EXERCISE C
# Change the capital of Wales from "Swansea" to "Cardiff".
# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
# Use a loop to print the names of all the countries in the UK.
# Use a loop to find the total population of the UK.

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

wales = united_kingdom[1]
wales [:capital] = "Cardiff"
p wales


united_kingdom[3] = {
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
}
p united_kingdom

for country in united_kingdom
  p country[:name]
end

total_pop = 0
for country in united_kingdom
  total_pop += country[:population].to_i
end
p total_pop
