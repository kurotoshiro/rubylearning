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
SECONDS_IN_A_MONTH=SECONDS_IN_A_YEAR/12.0
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
# months to days
#
def months_to_days(months)
  months*30.0
end
#
# days to hours
#
def days_to_hours(days)
  days*24.0
end
#
# hours to minutes
# minutes to seconds
#
def hours_to_minutes(hours)
  hours*60.0
end
alias minutes_to_seconds hours_to_minutes

AGES.each do |age|
  years=seconds_to_years(age)
  months=seconds_to_months(age%SECONDS_IN_A_YEAR)
  days=months_to_days(months-months.floor)
  hours=days_to_hours(days-days.floor)
  minutes=hours_to_minutes(hours-hours.floor)
  seconds=minutes_to_seconds(minutes-minutes.floor)

  result="If I am #{age} seconds old, then "
  result+="I'm %d years, %d months, %d days, %d hours, "
  result+="%d minutes and %d seconds old."
  
  puts result % [years,months,days,hours,minutes,seconds]
end
