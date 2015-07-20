require_relative "init"

cart = Cart.new(ARGV.delete_at(0)) # передаем имя владельца и удаление первого єлемента

ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name }
end

cart.read_from_file

begin
  cart.save_to_file
rescue Cart::ItemNoSupported
  puts "One of your items is virtual, Catr doesn't support saving virtual items yet"
end
