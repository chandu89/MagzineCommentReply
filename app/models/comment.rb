class Comment < ActiveRecord::Base
	validates :email, :presence => true
  	validates :comment, :presence => true
	belongs_to :article
	has_many :replies
end
