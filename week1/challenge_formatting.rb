#!/usr/bin/env ruby
 
=begin
  * Name        : challenge_formatting.rb
  * Description : Week 1 - Challenge formatting
  * Author      : Yoann Le Touche
  * Date        : 2011-01-19
  * License     : MIT license
=end

#
# Give the size of a cell
#
def cell_size(i)
  i.to_s.size+1
end

#
# Create some decoration the right size
#
def decoration(size,char='=')
  " "+char.to_s*size+"\n"
end

#
# Create a centered header (given a line size)
#
def header(text,size)
  text.center(size+1)+"\n"
end

#
# Create a line of the multiplication table
#
def line(number,nb_col,size)
  line=''
  nb_col.times do |i|
    i+=1
    line+="%#{size}d" % (number*i)
  end
  line+"\n"
end

#
# Return the multiplication table to integer
#
def multiplication_table(integer, heading = '', decorate = false)
  table=''
  cell_size=cell_size(integer**2)
  decoration=decoration(cell_size*integer)


  table+=header(heading,cell_size*integer+1) if not heading.empty?
  table+=decoration if decorate
 
  integer.times do |i|
    i+=1
    table+=line(i,integer,cell_size)
  end
  
  table+=decoration if decorate
  
  table
end

puts multiplication_table(9)
puts
puts multiplication_table(9,'Times Table to 9')
puts
puts multiplication_table(9,'Times Table to 9',true)
