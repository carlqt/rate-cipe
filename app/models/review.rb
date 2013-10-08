# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :string(255)
#  parent     :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  recipe_id  :integer
#

class Review < ActiveRecord::Base
	belongs_to :users
	belongs_to :recipe

	validates :comment, presence: true
end
