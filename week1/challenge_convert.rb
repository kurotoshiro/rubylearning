#!/usr/bin/env ruby
   
=begin
  * Name        : challenge_convert.rb
  * Description : Week 1 - Challenge Convert
  * Author      : Yoann Le Touche
  * Date        : 2011-01-19
  * License     : MIT license
=end
  
 
#
# Convert Fahrenheit to Celsius
#
def fahrenheit_to_celsius(temp)
  (temp.to_f - 32) * 5/9
end
#
# Convert Celsius to Fahrenheit
#
def celsius_to_fahrenheit(temp)
  temp.to_f * 9/5 + 32
end
#
# Convert Fahrenheit to Kelvin 
#
def fahrenheit_to_kelvin(temp)
  (temp.to_f + 459.67) * 5/9
end
#
# Convert Kelvin to Fahrenheit
#
def kelvin_to_fahrenheit(temp)
  temp.to_f * 9/5 - 459.67
end
 
#
# Parse user input.
# 
def parse_input(input)
  parsed_data=/(-?\d+,?\d*)\s+(\w+)\s+to\s+(\w+)/.match(input)
  if parsed_data
    parsed_data.captures.map { |d| d.gsub(',','.') }
  else
    []
  end
end
 
 
puts "what do you want to convert ?"
puts "ex. 451 fahrenheit to celsius\n"
 
input=parse_input(gets.chomp)
 
value_to_convert=input[0]
unit_from=input[1]
unit_to=input[2]
method="#{unit_from}_to_#{unit_to}"
 
if self.respond_to?(method,true)
  puts "%.2f #{unit_from} = %.2f #{unit_to}" % [value_to_convert, self.send(method, value_to_convert)]
end
