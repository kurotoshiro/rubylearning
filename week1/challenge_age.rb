#!/usr/bin/env ruby
 
=begin
  * Name        : challenge_age.rb
  * Description : Week 1 - Challenge age in years and months
  * Author      : Yoann Le Touche
  * Date        : 2011-01-19
  * License     : MIT license
=end
 
AGES=[979000000,2158493738,246144023,1270166272,1025600095]
SECONDS_IN_A_YEAR=60*60*24*365.0
SECONDS_IN_A_MONTH=60*60*24*30.0
SECONDS_IN_A_DAY=60*60*24.0
 
 
#
# seconds to years
#
def seconds_to_years(seconds)
  seconds/SECONDS_IN_A_YEAR
end
#
# seconds to months
#
def seconds_to_months(seconds)
  seconds/SECONDS_IN_A_MONTH
end
#
# seconds to months
#
def seconds_to_days(seconds)
  seconds/SECONDS_IN_A_DAY
end


AGES.each do |age|
  years=seconds_to_years(age)
  months=seconds_to_months(age%SECONDS_IN_A_YEAR)
  puts "If I am #{age} seconds old, then I'm %d years and %.2f months old." % [years,months]
end
