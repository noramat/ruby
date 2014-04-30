require 'colorize'

class Animal

  # way to get file names and locations?
  LOCATIONS = {
    :alley_cat => File.exists?('./cats/indoor/back-alley/alley-cat.gif'),
    :lion => File.exists?('./cats/outdoor/africa/lion.jpg'),
    :african_wild_cat => File.exists?('./cats/outdoor/africa/african-wild-cat.jpg'),
    :north_american_cat => File.exists?('./cats/outdoor/north-america/north_american_wild_cat.jpg'),
    :grandma_cat => File.exists?('./cats/indoor/grandmas-house/grandma-cat.jpg'),
    :herding_dog => File.exists?('./dogs/domestic/herding/herding_dog.jpg'),
    :hound_dog => File.exists?('./dogs/domestic/hound/hound_dog.jpg'),
    :toy_dog => File.exists?('./dogs/domestic/toy/toy_dog.jpg'),
    :australian_wild_dog => File.exists?('./dogs/wild/australia/australian_wild_dog.jpg'),

  }

  def self.create_name(animal)
    animal.to_s.gsub("_", " ").split.map(&:capitalize).join(" ")
  end

  def self.print_response
    LOCATIONS.each_with_index do |(animal_name, file_path), index|
      print "#{index+1}. "
      if file_path == true
        puts "You took #{create_name(animal_name)} home!".colorize(:green)
      else
        puts "#{create_name(animal_name)} is still missing!".colorize(:red)
      end
    end
  end

end

Animal.print_response