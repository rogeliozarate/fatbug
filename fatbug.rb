#!/usr/bin/env ruby 
=begin
fatbug.rb
  2010/09/20 20:07
  (r) Rogelio Zarate
      eco-systems
      
  Creates and saves files of the specified size
  Useful
   to create dummy load files
=end

thesize = 0.200
print 'You ordered a ' + thesize.to_s + ' MB file.'

# Generate the file
string = "abcdefghijklmnopqrstuvwxyz1234567890"
filesize = 0;

f = File.new(Time.now.strftime("%Y%m%d-%H%M%S") + ".dummy", 'w')

while filesize < thesize * 1e6
  f.puts string
  filesize += string.size
end

f.close
