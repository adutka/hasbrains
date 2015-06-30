class Item
  def price
    rand(100)
  end
end

item1 = Item.new
p item1.price

item2 = Item.new
p item2.price
item3 = Item.new

p item1
p item2
p item3

# items
# users
# carts
# orders