#Declare the record
class Item
  attr_accessor :id, :price, :quantity

  def initialize(id, price, quantity)
    @id = id
    @price = price
    @quantity = quantity
  end

  def total_price
    @price * @quantity
  end
end

def main()
  print "Enter Item ID: "
  id = gets.chomp

  print "Enter Price: "
  price = gets.chomp.to_f  # Convert to float (decimal)

  print "Enter Quantity: "
  quantity = gets.chomp.to_i  # Convert to integer

  # Create an Item object
  item = Item.new(id, price, quantity)

  # Display the details 
  puts "\n--- Item Information ---"
  puts "Item ID: #{item.id}"
  puts "Price: #{item.price}"
  puts "Quantity: #{item.quantity}"
  puts "Total Price: #{item.total_price}"
end

main()

