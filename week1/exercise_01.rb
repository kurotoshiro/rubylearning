#!/usr/bin/env ruby

=begin
  * Name        : exercise_01.rb
  * Description : Week 1 - Exercise 1
  * Author      : Yoann Le Touche
  * Date        : 2011-01-18
  * License     : MIT license
=end

y = false
z = true
x = y or z
puts x
(x = y) or z
puts x
x = (y or z)
puts x
