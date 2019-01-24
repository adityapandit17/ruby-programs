a_file = File.new('input.txt', 'r+')
if a_file
  a_file.syswrite('ABCDEF')
else
  puts 'Unable to open file!'
end
