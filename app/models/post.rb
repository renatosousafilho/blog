class Post < ActiveRecord::Base
	belongs_to :author
	has_many :comments
	delegate :name, :to => :author, :prefix => "author"
	delegate :bio, :to => :author, :prefix => "author"

	def self.options
		self.all.map { |post| [post.title, post.id] }
	end
end
