#!/usr/bin/env ruby

=begin
  * Name        : exercise_06.rb
  * Description : Week 1 - Exercise 6
  * Author      : Yoann Le Touche
  * Date        : 2011-01-18
  * License     : MIT license
=end

#
# Convert Fahrenheit to Celsius
#
def convert(fahrenheit)
  format("%.2f", (fahrenheit.to_f-32)/1.8)
end

puts "All should read Celsius #{convert(451)} !"
puts "All should read Celsius #{convert(nil)} !"
puts "All should read Celsius #{convert("toto")} !"
