# This is a comment

master = "folie"

salutation = "Mr. Grey"
greetings = "Good morning."
puts "Hello #{master}, " + greetings

# This is a function
def MakeABot(bot_name = "Hotsy")
  # The default variable should kick off when no parameter given to method. However, it's not working. Why?
  puts "I am #{bot_name.capitalize}"
end

# Firing off the MakeABot method
MakeABot "cissy"

# Creation of Greeter class with multiple methods
class Greeter
  def initialize(name="Hotsy")
      @name = name
      @master = "folie"
  end
  def say_hi
      puts "Hi #{@master}, my name is #{@name}"
  end
  def say_bye
      puts "Bye #{@master}, I'll come back soon. xoxo #{@name}"
  end
end

puts "Let's make a bot. What should we name it?"
bot_name = gets.chomp
# Initializing new instance of Greeter
greeter = Greeter.new(bot_name)

# firing off methods
greeter.say_hi
greeter.say_bye

# Listing all the methods on the Greeter class. To include all the ancestor methods, turn the flag to true or blank it altogether
Greeter.instance_methods(false)

# Check whether an instance respond to specific input
greeter.respond_to?("name")
greeter.respond_to?("say_hi")
greeter.respond_to?("to_s")

Greeter.new("Brahm")
greeter.respond_to?("name")
greeter.respond_to?("name=")