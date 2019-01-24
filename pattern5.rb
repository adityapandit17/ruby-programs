         #    *
         #   ***
         #  *****
         # *******
         #  *****
         #   ***
         #    *

puts
space = 7
for i in 1..7
  if i%2!=0
    print ' ' * space
    print '*' * i
    puts
    space = space-1
  end
end
space = space + 2
7.downto(1) do |j|
  if j==7
    next
  end
  if j%2!=0
    print ' ' * space
    print '*' * j
    space = space+1
    puts
  end
end
