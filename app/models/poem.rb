# == Schema Information
#
# Table name: poems
#
#  id         :integer          not null, primary key
#  title      :text
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Poem < ActiveRecord::Base
  belongs_to :user
  has_many :favourites
  has_and_belongs_to_many :categories
end
