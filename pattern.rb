# $j = 0
# $num = 5
# until j <= 5 do 
# 	j.downto(1) do |i|
# 		print i 
# 	end
# 	for i in 2..j
# 		print i 
# 	end
# 	puts ""
# 	j--
# end

$j = 5
$space = 0
while $j <= 5 and $j!=0 do
  print ' ' * $space
  $j.downto(1) do |i|
    print i
  end
  for i in 2..$j
    print i
  end
  puts
  $j = $j-1
  $space = $space+1
end

# 543212345
#  4321234
#   32123
#    212
#     1
