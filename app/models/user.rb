# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :poems
  has_many :favourites
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 5}

end
