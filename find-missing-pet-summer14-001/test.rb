require 'colorize'

class Animal

  LOCATIONS = {
    :alley_cat => './cats/indoor/back-alley/alley-cat.gif',
    :lion => './cats/outdoor/africa/lion.jpg',
    :african_wild_cat => './cats/outdoor/africa/african-wild-cat.jpg',
    :north_american_wild_cat => './cats/outdoor/north-america/north-american-wild-cat.jpg',
    :grandma_cat => './cats/indoor/grandmas-house/grandma-cat.jpg',
    :herding_dog => './dogs/domestic/herding/herding_dog.jpg',
    :hound_dog => './dogs/domestic/hound/hound_dog.jpg',
    :toy_dog => './dogs/domestic/toy/toy_dog.jpg',
    :australian_wild_dog => './dogs/wild/australia/australian-wild-dog.jpg',
    :wolf => './dogs/wild/USA/wolf.jpg',
    :circus_elephant => './elephants/circus/circus-elephant.jpg',
    :painting_elephant => './elephants/painters/painting-elephants.jpg',
    :caged_iguana => './iguanas/caged/caged-iguana.jpg',
    :free_roam_iguana => './iguanas/free-roam/free-roaming-iguana.jpg'
  }

  def self.create_name(animal)
    animal.to_s.gsub("_", " ").split.map(&:capitalize).join(" ")
  end

  def self.print_response
    LOCATIONS.each_with_index do |(animal_name, file_path), index|
      print "#{index+1}. "
      if File.exists?(file_path)
        puts "You took #{create_name(animal_name)} home!".colorize(:green)
      else
        puts "#{create_name(animal_name)} is still missing!".colorize(:red)
      end
    end
  end

end

Animal.print_response