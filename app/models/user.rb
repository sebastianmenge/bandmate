class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, 
                  :remember_me, :avatar, :bands_attributes
  
  has_many :bands
  has_many :posts, :foreign_key => 'user_id'
  accepts_nested_attributes_for :bands
  
  has_attached_file :avatar, 
                    :styles => { 
                      :original => {
                        :crop => "130x130#",
                        :geometry => "120x120#",
                        :quality => 60,
                        :format => 'png'
                      },
                      :thumb => {
                        :crop => "50x50#", 
                        :geometry => "45x45#",
                        :quality => 80,
                        :format => 'png'
                      }
                    },
                    
      :url  => "/assets/users/:id/:style/:basename.:extension",
      :path => ":rails_root/app/assets/images/users/:id/:style/:basename.:extension"


end

# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  username               :string(255)
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

