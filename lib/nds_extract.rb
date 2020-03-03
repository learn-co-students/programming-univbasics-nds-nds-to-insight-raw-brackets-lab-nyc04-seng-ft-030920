$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
row_index = 0
# total = 0
# names = {}
while row_index < nds.length do
  # namevariable = nds[row_index][:name]
  # names.merge!(namevariable.to_s)
#   row_index += 1
# end
#
# # grosstotal = {}
# total = 0
# while row_index < nds.length do
 grossindex = 0
 total = 0
 while grossindex < nds[row_index][:movies].length do
   total += nds[row_index][:movies][grossindex][:worldwide_gross]

  #  grosstotal.merge!(total)
   grossindex += 1
 end
 result.merge!(nds[row_index][:name] => total)
 row_index +=1
end


result


  # Be sure to return the result at the end!

end

# index = 0
# movies = directors_database[0][:movies]
# while index < movies.count do
#   puts movies[index][:title]
#   index += 1
# end
