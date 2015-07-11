require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

@items = []
@items << VirtualItem.new({ :price => 10, :weight => 100, :name => "virtualcar"})
@items << RealItem.new({ :price => 121,:weight => 100, :name => "card"})
@items << RealItem.new({ :price => 130,:weight => 50, :name => "blablacar"})
@items << Item.new({ :price => 10, :weight => 100, :name => "realcar"})