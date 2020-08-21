require 'httparty'
require_relative 'lib/project'

# Execution du class Larves
larves = Larves.new
larves.to_json_larves

# Execution du class Monstres_des_cavernes
monstres1 = Monstres_des_cavernes.new
monstres1.to_json_monsters1

# Execution du class Monstres_des_plaines
monstre2 = Monstres_des_plaines.new
monstre2.to_json_monsters2