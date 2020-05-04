def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  
  #iterate through each array element of the collection
  #in this case, the element will be a hash of the items and their attributes
  collection.each do |hash|
    if hash[:item] == name
      return hash
    end
  end
return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_array = []
  
  cart.each do |hash|
    if !hash[:count] 
      hash[:count] = 1
    elsif hash[:count]
      hash[:count] += 1 
    end
    new_array << hash
  end
  new_array
end


  