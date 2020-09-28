# Setting up an array
family = ["Aurora", "Carlos", "Tokyo", "Nayoh"]

# Printing the array
p family

# Print the first array
p family.first

# Print the last array
p family.last

# Setting up numerical array
scale = 1..10
p "scale is #{scale}"

# Turn string to array
scale = scale.to_a
p "scale is now #{scale}"

# Shuffeling without saving to new variables
scale.shuffle!
p "shuffled variable is now #{scale}"

# Lets do a better version of arrays
version_text = "Adriatic,Baltic,Celtic"
version_array = version_text.split(",")
p version_array

version_array.each {|ver| puts ver}
