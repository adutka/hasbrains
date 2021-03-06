class Item

  def initialize(options={})
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
  end

  attr_reader :price, :name
  attr_writer :price

  def info
    yield(price)
    yield(name)
  end
end


