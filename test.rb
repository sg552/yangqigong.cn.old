# 把某个文件夹下的所有文件, 名字从大写改成小写.
Dir.glob("./**/*").sort{|x| x.size}.each do |name|
  x = name.split('/')
  newname = (x[0..-2] + [x[-1].downcase]).join('/')
  File.rename(name, newname)
end
