require 'bcrypt'

password = BCrypt::Password.create("folie")

def check_pass(password)
  puts "password that enters BCrypt is #{password}"
  pass_check = BCrypt::Password.new(password)
  pass_check == password ? "password accepted" : "wrong password"
end

puts "password is #{password}"

p "Enter password: "
pass = gets.chomp
check_pass(pass)