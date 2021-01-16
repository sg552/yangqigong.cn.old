Dir.glob("./**/*").each do |file|
  puts file
  #File.rename(file, file.downcase) #or upcase if you want to convert to uppercase
end
