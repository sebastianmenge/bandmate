class Band < ActiveRecord::Base
  
  include ActiveModel::Dirty

  define_attribute_methods = [:name, :header, :bgcolor, :maincolor, :textcolor, :linkcolor]
  
  has_many :posts, :dependent => :destroy
  belongs_to :user
  
  attr_accessible :name, :header, :bgcolor, :maincolor, :textcolor, :linkcolor
  
  hex_regex = /^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/
  
  validates :name, :presence => :true, 
                   :length => { :maximum => 30 }
                   
  validates :bgcolor, :format => { :with => hex_regex }
                   
  def to_param
    "#{id}-#{name.parameterize}"
  end
  
  has_attached_file :header,
                    :styles => {
                      :original => {
                        :geometry => "960x140",
                      }
                    },
  
  :url  => "/assets/bands/:id/:basename.:extension",
  :path => ":rails_root/app/assets/images/bands/:id/:basename.:extension"
                   
  
  
end

# == Schema Information
#
# Table name: bands
#
#  id                  :integer         not null, primary key
#  name                :string(255)
#  user_id             :integer
#  created_at          :datetime
#  updated_at          :datetime
#  slug                :string(255)
#  header_file_name    :string(255)
#  header_content_type :string(255)
#  header_file_size    :integer
#  header_updated_at   :datetime
#  bgcolor             :string(255)
#  maincolor           :string(255)
#  textcolor           :string(255)
#  linkcolor           :string(255)
#

