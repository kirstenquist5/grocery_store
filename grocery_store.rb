# display a menu for the user to interact with.
# produce, meats, bakery
# a few items

# sudo code - put in comments what the next step should be

#instance variable

require "pry"

@cart = []
@items = [
  { name: "pickles", price: 3.00 },
  { name: "ketchup", price: 1.00 },
  { name: "bread", price: 5.00 },
  { name: "olives", price: 10.00 }
]

def menu
  puts "-- Ruby Grocery Store --"
  puts "1) Add Items"
  puts "2) View Items"
  puts "3) Remove Items"
  puts "4) Checkout"
  puts "5) Exit"
  handle_input
end

def handle_input
  # print "Please select from the options above."
  print "< "
  case gets.to_i
  when 1
    add_items
  when 2
    view_items
  when 3
    remove_items
  when 4
    checkout

  # another when statement
  # puts or print the items
  # loop through the items array using each, then print
    when 5
      puts "Thanks for shopping!"
    else
      puts "Wrong selection. Try again."
      sleep(2)
      print `clear`
      menu
  end  
end

def add_items
  #clears screen and starts fresh
  print `clear`
  @items.each_with_index do |item, i|
    puts "#{i + 1}) #{item[:name]} - $#{item[:price]}"
  end
  print "> "
  choice = gets.to_i
  # binding.pry
  @items[choice - 1]
  @cart << @items[choice - 1]
  print `clear`
  puts "Item has been successfully added to cart."
  puts @cart
  # @cart.each_with_index do |cart, c|
  #   puts "#{c + 1}) #{cart[:name]} - $#{cart[:price]}"
    #puts @cart.map {|x| x.values}
    #item has been successfully added to cart 
    #please make another selection
    #puts "#{@cart[:name]} - $#{@cart[:price]}"
    # once I'm done putting items in the cart how do I get back to the menu???
end

def view_items
  print `clear`
  puts "Items currently in cart"
  puts @cart
end

def remove_items
  # show items in cart
  # selection to remove items
end

def checkout
  # show items in cart
  # show total
  # checkout option or cancel
end 

# shovel your items into the cart array
# take the selection and link it to the key

menu

