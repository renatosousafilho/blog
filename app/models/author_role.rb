class AuthorRole < ActiveRecord::Base
	has_many :posts
	validates_presence_of :name
	belongs_to :user
end