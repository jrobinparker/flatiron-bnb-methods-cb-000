class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings
  
  def most_res 
    self.listings.count(:neighborhood_id)
  end 

end
