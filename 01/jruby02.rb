require "java"

# Don't clash with the Ruby Date class
java_import("java.util.Date") { |pkg, name| "JDate" }
java_import("java.text.DateFormat")

date_format = DateFormat.get_date_instance

jdate = JDate.new
rdate = Time.now

puts "jdate: #{jdate}"
puts "rdate: #{rdate}"
puts "jdate == rdate: #{jdate == rdate}"
puts
puts "with format:"
jdate = date_format.format(jdate)
rdate = date_format.format(rdate)
puts "jdate: #{jdate}"
puts "rdate: #{rdate}"
puts "jdate == rdate: #{jdate == rdate}"
