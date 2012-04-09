# Loading Java support
require 'java'

os   = java.lang.System.get_property('os_name')
home = java.lang.System.get_property('java.home')
mem  = java.lang.Runtime.get_runtime.free_memory
# You could use Java::java.lang.System too

puts "Running on #{os}"
puts "Java home is #{home}"
puts "#{mem} bytes available in JVM"
