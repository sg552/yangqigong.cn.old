# 把某个文件夹下的所有文件, 名字从大写改成小写.
require 'set'
file_extentions = Set.new
Dir.glob("./**/*").sort{|x| x.size}.each do |name|

  file_extention = name.split('.').last
  file_extentions.add(file_extention)

  if file_extention == 'html' || file_extention == 'htm'
    command = "iconv #{name} -f GB2312 -t UTF-8 -o #{name}"
    puts command
    `#{command}`
  end

end

