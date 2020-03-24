$LOAD_PATH.unshift(File.dirname(__FILE__))
require "pp"
require 'directors_database'
require "pry"

def directors_totals(nds)
  director_earning ={}
  director_index =0 
  while director_index<nds.length do 
    dir_name = nds[director_index][:name]
    director_earning[dir_name] =0
    title_index =0 
    while title_index< nds[director_index][:movies].length do 
     director_earning[dir_name] += nds[director_index][:movies][title_index][:worldwide_gross] 
     title_index+=1 
   end
    director_index +=1 
  end
  director_earning
end























