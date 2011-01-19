#!/usr/bin/env ruby

=begin
  * Name        : exercise_03.rb
  * Description : Week 1 - Exercise 3
  * Author      : Yoann Le Touche
  * Date        : 2011-01-18
  * License     : MIT license
=end

SECONDS_IN_A_YEAR=3600*24*365
AGE_IN_SECONDS=979000000

#
# Convert seconds to years
#
def seconds_to_years(seconds)
  years=seconds.to_f/SECONDS_IN_A_YEAR.to_f
  format("%.2f", years)
end

puts "You are #{seconds_to_years(AGE_IN_SECONDS)} years old if your are
 979000000 seconds old"
