a = [1, 4588,2,8,36526,6,9,4,7,5]
temp = 0
# 0.upto(a.length-2) do |i|
#   # if a[i] > a[i+1]
#     print a[i]
#     # a[i], a[i+1] = a[i+1], a[i]
#   end
# end	
arr_len = a.length-2
# puts arr_len
swapped = true
while swapped do
  swapped = false
  for i in 0..arr_len
    if a[i] > a[i+1]
      a[i], a[i+1] = a[i+1], a[i]
      swapped = true
    end
  end
end
puts a
second_higest = a.length-2
puts "second highest is #{a[second_higest]}"
# puts a 
