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

require 'test_helper'

class PoemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
