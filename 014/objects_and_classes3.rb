#properites of object, setters, getters
class Item

  def initialize
    @price = 30
  end

  def price
    @price
  end

  # def price=(price_value)
  #   @price = price_value
  # end

  # def weight #getters
  #   @weight
  # end

  # def weight=(weight_value) #setters
  #   @weight= weight_value
  # end

  # attr_reader :price, :weight #anog gettera
  # attr_writer :price, :weight #analog settera

  attr_accessor :price, :weight #getters+setters

end

item1 = Item.new
p item1.price = 10

item2 = Item.new
p item2.price
item2.price = 20
p item2.price