class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review
  
  validates :checkin, presence: true
  validates :checkout, presence: true  

  def total_price 
    days = self.pluck('DATEDIFF(:checkin, :checkout)')
    days * self.price 
  end
  
end
