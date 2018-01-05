require './products.rb'

class Cart

  @@cart = []

  attr_accessor :name

  def self.menu
    puts "1 to add an item to your cart"
    puts "2 to remove an item to your cart"
    puts "3 to display your cart"
    menu_choice = gets.chomp.to_i

    if menu_choice == 1
      Cart.add
    elsif menu_choice == 2
      Cart.remove
    elsif menu_choice == 3
      p Cart.display_cart
    end
  end

  def self.add
    puts "type in the name of the product you would like to add"
    choice = gets.chomp
    Products.display_shelf.each do |product|
      if product.name == choice
        @@cart << product
      end
    end
  end

  def self.remove
    puts "type the name of the item you would like to delete"
    choice = gets.chomp
    Cart.display_cart.each do |product|
      if Cart.name == choice
        Cart.display_cart.pop
      end
    end
  end

  def self.display_cart
     @@cart
  end
end

while true
 Cart.menu
end
