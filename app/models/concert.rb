class Concert < ActiveRecord::Base
  
  belongs_to :band
  
  attr_accessible :location, :city, :country, :eventdate, :support, 
                  :adress, :notes, :publish, :telephone
  
  default_scope :order => 'concerts.eventdate'
  
  
end

# == Schema Information
#
# Table name: concerts
#
#  id         :integer         not null, primary key
#  location   :string(255)
#  city       :string(255)
#  country    :string(255)
#  support    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  band_id    :integer
#  adress     :text
#  notes      :text
#  eventdate  :datetime
#  telephone  :string(255)
#  publish    :boolean
#

