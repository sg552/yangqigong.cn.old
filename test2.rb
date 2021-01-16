# 把某个文件夹下的所有文件, 名字从大写改成小写.
require 'set'
file_extentions = Set.new
Dir.glob("./**/*").sort{|x| x.size}.each do |name|

  file_extention = name.split('.').last
  file_extentions.add(file_extention)

  if file_extention == 'html' || file_extention == 'htm'
    `iconv #{name} -f GB-2312 -t UTF-8 > #{name}`
  end

  #next if name.index('.rb') == nil || name.index('.rb') < 0
  #x = name.split('/')
  #newname = (x[0..-2] + [x[-1].downcase]).join('/')
  #File.rename(name, newname)
  puts name
end

puts file_extentions.inspect
