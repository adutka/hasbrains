require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"

@items = []
@items << AntiqueItem.new({ :price => 121,:weight => 100, :name => "car"})
@items << RealItem.new({ :price => 130,:weight => 50, :name => "blablacar"})
@items << RealItem.new({ :price => 10, :weight => 100, :name => "realcar"})

cart = Cart.new("roman")
cart.add_item RealItem.new({ :price => 130,:weight => 50, :name => "car"})
cart.add_item RealItem.new({ :price => 130,:weight => 50, :name => "car"})

cart.add_item RealItem.new({ :price => 130,:weight => 50, :name => "blablacar"})

puts @items[0].kind_of?(AntiqueItem)
puts @items[0].kind_of?(Item)
puts @items[0].class == AntiqueItem
puts @items[0].class == Item

puts @items[0].respond_to?(:info)
puts @items[0].respond_to?(:important_info)

puts @items[0].send(:tax) #send может вызывать приватные методы
# puts @items[0].tax # error

method = "all_cars"
p cart.send(method)
