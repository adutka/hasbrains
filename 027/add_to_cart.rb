require_relative "init"

p cart = Cart.new

ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name }
end

p cart.items