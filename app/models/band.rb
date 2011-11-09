class Band < ActiveRecord::Base
  
  has_many :posts
  belongs_to :user
  
  attr_accessible :name
  
  validates :name, :presence => :true, 
                   :length => { :maximum => 30 }
end

# == Schema Information
#
# Table name: bands
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

