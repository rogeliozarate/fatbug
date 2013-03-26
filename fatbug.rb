#!/usr/bin/env ruby 
=begin
fatbug.rb
  2010/09/20 20:07
  (r) Rogelio Zarate
      eco-systems
      
  Creates and saves files of the specified size
  Useful to create dummy load files
  ? add UUID
=end


string = "abcdefghijklmnopqrstuvwxyz1234567890"
file_size = ARGV[0].to_f
file_name = "#{Time.now.strftime("%Y%m%d-%H%M%S")}-#{file_size}MB.dummy"


# Generate the file

f = File.new(file_name, 'w')
actual_size = 0

while actual_size < file_size* 1e6
  f.puts string
  actual_size += string.size
end

f.close

puts "Your file #{file_name} is served."
