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

p cart.all_cars
p cart.all_blablacars