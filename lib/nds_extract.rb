$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  row_index = 0
  dir_hash = {}
  dir_hash[directors_database] = {}
  
  while row_index < directors_database.length do
    dir_hash[directors_database][directors_database[row_index][:name]] = 0
    column_index = 0
    while column_index < directors_database[row_index][:movies].length do
      dir_hash[directors_database][directors_database[row_index][:name]] += directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    row_index += 1
  end
  p dir_hash[nds]
end
