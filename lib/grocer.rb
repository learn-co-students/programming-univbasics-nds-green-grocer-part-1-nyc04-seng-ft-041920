require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  collection.collect do |item_hash|
    item_hash.each do |key_info, value_detail|
      if value_detail == name
        return item_hash
      end
    end
  end
  return nil  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  checkout_list = []
  
  cart.each do |item_hash|
    checkout_list << item_hash
  end
 
  checkout_list.each do |item_hash|
    item_hash[:count] = 0
  end
  
  checkout_list.each do |item_hash|
    item_hash[:count] += 1
  end

  checkout_list
end


