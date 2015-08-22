require 'pry'

def nyc_pigeon_organizer(data)
  hash_of_pigeons = {}
  data[:gender].values.flatten.each do |name|
    hash_of_pigeons[name] = {}                #makes a hash with the name as a key and hash as the value
    data.each do |attribute, color_hash|
      hash_of_pigeons[name][attribute] = []
      color_hash.each do |qualities, more_names|
        hash_of_pigeons[name][attribute] << qualities.to_s if more_names.include?(name)
      end
    end
  end
  hash_of_pigeons
end


# new_hash[current_pigeon][color_or_gender_or_lives_key] << "specific color"
# first iteration for theo
# name/theo your color_or_gender_or_lives_key when the iteration reaches :color is :purple and also :grey 
# => when it reaches :gender your key is :male
# => when it reaches :lives your key is "Subway"

# second iteration for "Peter Jr.", your color is :purple and :grey

# make the names keys of a hash
# is theo in the first element of the array
# has lives and an empty array 
# build the hash on the array of names

# Step 1
# create an empty hash where the names of your darling pigeons will go
# since pigeons are so darling there can only be one of a kind, so get all of their name
# by using iteration and two enumerable methods
# make a hash with the name as a key and an empty hash as the value

# Step 2
# iterate over the data argument once again now going full charge at getting the empty
# hash with the names (you got this in step 1) their color, gender, lives attribute.
# remember youve got a color hash to deal with which has the names of the darling pigeons in array as values

# Step 3
# pigeons in the coop, now you have to set up an empty array at the level where youre going to shove 
# the color/gender/lives hash keys as strings
# Step 3.5 
# iterate over that color hash to get the purple, grey, central park keys level (i call this qualities)
# where the value will be that tricky array of names

# step 4
# remember youve got that name value from step one which you can compare against that pesky names array
# if the pesky names array includes a match on that name, shovel it into the correct level of your hash.

# remember the pigeon lady from home alone? Youre pretty much her now.