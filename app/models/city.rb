class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  
  def most_res
    self.listing.maximum
  end 
  
end

