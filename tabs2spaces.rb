#!/usr/bin/ruby

folder_argument = ARGV[0]

file_expand = lambda do |file|
  puts "Expanding tabs on " + file
  return `expand -t 2 -i #{file}` 
end

file_write = lambda do |file, data|
  begin
    new_file = File.open(file, "w") do |f|
      f.puts data
    end
  rescue IOError => e
    puts e
  ensure
    new_file.close unless new_file == nil
  end
end

unless File.directory?(folder_argument)
  new_file = file_expand.call folder_argument
  file_write.call folder_argument, new_file
else
  folder = File.join(folder_argument,'**','*.rb')

  Dir.glob(folder).each do |file|
    puts "Expanding tabs on: " + file
    new_file = file_expand.call file
    file_write.call file, new_file
  end

end

