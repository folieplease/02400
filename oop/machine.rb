class Machine
  attr_accessor :type, :industry, :name, :price

  def initialize (type, industry, name, price)
    @type = type
    @industry = industry
    @name = name
    @price = price
  end
end

vaporizer = Machine.new("Aerator", "Palm Oil", "Box Aerator", 25000)
p vaporizer.price