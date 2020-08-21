require 'httparty'
require_relative 'lib/project'

# ===== Class Larves =====
larves = Larves.new
larves.to_json_larves

# ===== Class Monstres_des_cavernes =====
cavernes = Monstres_des_cavernes.new
cavernes.to_json_monstres_caverne

# ===== Class Monstres_des_plaines =====
plaine_herbeuse = Monstres_des_plaines.new
plaine_herbeuse.to_json_plaine_herbeuse