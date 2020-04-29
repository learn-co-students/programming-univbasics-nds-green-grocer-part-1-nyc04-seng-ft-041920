require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    if item[:item] == name 
      return item 
    end 
  end 
  return nil 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  reciept_items = []
  cart.each do |cart_item|
    index_in_reciept = reciept_items.find_index do |i|  
                          i[:item] == cart_item[:item]
                       end 

    if index_in_reciept
      reciept_items[index_in_reciept][:count] += 1 
    else 
      item = cart_item
      item[:count] = 1 
      reciept_items << item 
    end 
  end 

end


  