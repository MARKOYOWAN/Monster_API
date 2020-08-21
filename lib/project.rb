require 'bundler'
require 'httparty'
class Larves
  def initialize
    # Recuperation des APIs en utilisant le filtre REST
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

  # Ecriture dans le fichier JSON
  def to_json_larves
    File.open("./db/monstre_larve.json", 'w') do |file|
     file.write(@type)
    end
    puts "JSON : monstre_larve.json => ok(voir dans le dossier db)"
  end
end

class Monstres_des_cavernes
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def to_json_monsters1
    File.open("./db/monstres_caverne.json", 'w') do |file|
      file.write(@type)
    end
    puts "JSON : monstres_caverne.json => ok(voir dans le dossier db)"
  end
end

class Monstres_des_plaines
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def to_json_monsters2
    File.open("./db/monstre_plaine_herbeuse.json", 'w') do |file|
      file.write(@type)
    end
    puts "JSON : monstre_plaine_herbeuse.json => ok(voir dans le dossier db)"
  end
end