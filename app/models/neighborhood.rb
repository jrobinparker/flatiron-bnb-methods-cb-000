class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings
  
  def most_res 
    self.listings.maximum(:listings)
  end 

end
