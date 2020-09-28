# Hash contains two things: key and value
# Hash using curly brackets, instead of straight brackets as array do
entity = {"name" => "RPS", "type" => "organization", "class" => "small"}
p "entity is #{entity}"
p "entity detail for hash zero is #{entity['name']}"

# A better and known way to write it is as symbols, using the colon mark
entity = {name: 'RPS', type: 'organization', class: 'small', team_number: 2}
p "A better way to write entity produces #{entity}"
p "A better entity detail for hash zero is #{entity[:type]}"

p "showing keys for entity: #{entity.keys}"
p "showing keys for entity: #{entity.values}"

# Looping through the class and value

entity.each do |key, value|
    p "the class of key is #{key.class} and the class of value is #{value.class}"
end

# Show only hash contains string value, and save it to new entity_string

entity_string = Hash.new()
entity_other = Hash.new()

entity.select do |k,v|
    if v.is_a?(String)
        entity_string[k] = v
    else
        entity_other[k] = v 
    end
end

p "the new entity string is: #{entity_string}"
p "the new other entityis: #{entity_other}"