require "java"

java_import('java.lang.String') { |pkg, name| "J#{name}" }

ResourceBundle = java.util.ResourceBundle
Locale = java.util.Locale

lang    = JString.new('de')
country = JString.new('DE')

cLocale = Locale.new(lang, country)
msg = ResourceBundle.get_bundle('MessagesBundle', cLocale)

puts msg.get_string('greetings')
puts msg.get_string('welcome')
