class Post < ActiveRecord::Base
  attr_accessible :content
  
  validates :content, :presence => :true

  belongs_to :band
  belongs_to :user          
  
  default_scope :order => 'posts.created_at DESC'
  

end

# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  content    :text
#  band_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

