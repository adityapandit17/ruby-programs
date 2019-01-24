a_file = File.new('input.txt', 'r')
if a_file
  content = a_file.sysread(20)
  puts content
else
  puts 'Unable to open file!'
end
