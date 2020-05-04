def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |element| 
    if element[:item] == name
      return element
    end
  end
  nil
  
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  consolidated = []
  cart.each do |item|
    if find_item_by_name_in_collection(item[:item], consolidated)
      item[:count] += 1
      consolidated << item
    else
      item[:count] = 1
      consolidated.push(item)
    end
  end
end




  