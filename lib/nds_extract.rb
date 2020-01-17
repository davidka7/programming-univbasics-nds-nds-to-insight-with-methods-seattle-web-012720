$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total=0 
column_index=0
total+=director_data[:movies][column_index][:worldwide_grosses]
column_index+=1
total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds, row_index, column_index)
  result = {}
  name=nds[row_index][:name]
  result[name]=0 
  result[name]+= nds[row_index][:movies][column_index][:worldwide_grosses]
  return result
end
