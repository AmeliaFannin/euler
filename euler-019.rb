# Number 19 Counting Sundays

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, 
# but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century 
# (1 Jan 1901 to 31 Dec 2000)?

require 'Date'

def get_sundays
  d = Date.parse('1 Jan 1901')
  limit = Date.parse('31 Dec 2000')
  sundays = 0

  until d == limit do
    sundays += 1 if d.mday == 1 && d.wday == 6
    d += 1  
  end

  sundays
end

puts get_sundays