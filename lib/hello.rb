def hello_t(array)
  if block_given? 
    #block_given? method returns true if the method that contains block_given? is called with a block and false if it is not.
 i = 0
 
  while i < array.length
    yield (array[i])
    i = i + 1
  end
  array
  # Here, we tell our method to return the original array simply by having that array be the last line of the method. Whatever is evaluated last in a method will be the return value for the whole method.
  else
    puts "Hey! No block was given!"
  end
end 

# call your method here!

 hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

