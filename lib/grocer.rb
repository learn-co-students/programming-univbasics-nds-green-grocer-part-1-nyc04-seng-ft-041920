def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
collection.each do |x|
  if x[:item] == name
    return x
   end
   
 end
 nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
cart2 =[]

cart.each do |x|
p x[:item]
x[:count] =1
if cart2.include?(x)
 puts cart2[cart2.index(x)][:count] +=1
else
  cart2 << x
end


end
return cart2
end


  