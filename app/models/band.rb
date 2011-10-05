class Band < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :user, :dependent => :destroy
  
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

