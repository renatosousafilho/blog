class Post < ActiveRecord::Base
	belongs_to :author_role
	has_many :comments
	delegate :name, :to => :author, :prefix => "author"
	delegate :bio, :to => :author, :prefix => "author"
	validates_presence_of :title, :body


	def self.options
		self.all.map { |post| [post.title, post.id] }
	end
end
