require 'pry'
#### 1st Question #####
ability = ""
pokemon.each do |pokemon_hash|
  pokemon_hash["abilities"][0]["ability"]["url"]
end
#####

  #### 2nd Question ####
  base_xp = pokemon.find do |pokemon_hash|
    pokemon_hash["base_experience"] > 40
  end
  ######

#### 3rd Question ###
pokemon.select do |pokemon_hash|
  pokemon_hash["base_experience"] > 40
end
###

### 4th Question ###
pokemon.map do |pokemon_hash|
  pokemon_hash["name"]
end
###

#### 5th Question ####
pokemon.any? do |pokemon_hash|
  pokemon_hash["name"] > 60
end
