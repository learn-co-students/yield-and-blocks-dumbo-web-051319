def hello_t(array)
  # call your method here!
  if block_given?
  i = 0
  while i < array.length
    yield array[i]
    i = i + 1
  end
  array                     #returns the original array
else
  puts "Hey! No block was given!"
end
end
