# my_data = { :name => "James", :family_name => "Bond"}

# p my_data [:name]
# p my_data [:family_name]

# p my_data

# p (1+2).object_id
# p "ruby".object_id

# p (1+2).object_id
# p "ruby".object_id

class Item

  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

  attr_reader :price, :weight #anog gettera
  attr_writer :price, :weight #analog settera
end

item1 = Item.new({ :weight => 10, :price => 30 })
p item1.price
p item1.weight