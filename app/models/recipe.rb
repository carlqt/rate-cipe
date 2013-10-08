# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  recipe     :text
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#

class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
	#accepts_nested_attributes_for :reviews
	
	validates :title, :presence => true
end
