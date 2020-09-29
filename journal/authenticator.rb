faux_database = [
  {username: "folie", password: "Folie123"},
  {username: "oa", password: "Oa123"},
  {username: "carlos", password: "Lota123"},
  {username: "tokyo", password: "Toki123"},
  {username: "nayoh", password: "Oyan123"},
]

attempt = 3
persona = nil

def authenticate (username, password, faux_database)
  @username = username
  @password = password
  @database = faux_database

  @database.each do |persona_hash|
  #check matching data
    if persona_hash[:username] == @username && persona_hash[:password] == @password
      return persona_hash[:username]
    end
  end
end

while attempt > 0 && persona.nil? do
  attempt == 3 ? "You are at Cerberus" : "Welcome user"
  p "You have #{attempt} attempts left to enter."
  print "Please enter your username: " 
  username = gets.chomp.downcase
  print "Please enter your password: "
  password = gets.chomp

  persona = authenticate(username,password,faux_database)

  attempt -= 1
end

p "Existing persona is #{persona}"

if attempt == 0 && unlocked == false
  p "You have 3 failed attempts. You have been locked out of the system"
elsif !persona.nil?
  p "Welcome #{persona.capitalize}"
end