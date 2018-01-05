class Products

  @@products = []

  def initialize(name, price, tax)
    @name  = name
    @price = price
    @tax   = tax
    @total = price * (1 + tax)
  end

  attr_accessor :name

  def self.add_to_shelf(name, price, tax)
    item = Products.new(name, price, tax)
    @@products << item
    item
  end

  def self.display_shelf
    @@products
  end

end

Products.add_to_shelf("chicken", 5.00, 0.10)
Products.add_to_shelf("ham", 7.00, 0.08)
Products.add_to_shelf("cheddar_cheese", 6.00, 0.15)
Products.add_to_shelf("froot_loops", 5.00, 0.10)
Products.add_to_shelf("oranges", 3.00, 0.05)
