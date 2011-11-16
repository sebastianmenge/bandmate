class Band < ActiveRecord::Base
  # extend FriendlyID
  # friendly_id :name, :use => :slugged
  
  has_many :posts, :dependent => :destroy
  belongs_to :user
  
  attr_accessible :name
  
  validates :name, :presence => :true, 
                   :length => { :maximum => 30 }
                   
  def to_param
    "#{id}-#{name.parameterize}"
  end
                   
  
  
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
#  slug       :string(255)
#

