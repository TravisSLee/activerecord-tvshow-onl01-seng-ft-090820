class Show < ActiveRecord::Base 
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.find(rating: self.maximum(:rating))
  end
end