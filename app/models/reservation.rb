class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review
  
  validates :checkin, presence: true
  validates :checkout, presence: true  

  def duration
    self.checkout - self.checkin
  end
  
  def total_price(duration)
    price = self.listing.price
    total = duration * price
    return totla
  end 
  
end
