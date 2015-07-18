class Post < ActiveRecord::Base
	belongs_to :author
	delegate :name, :to => :author, :prefix => "author"
	delegate :bio, :to => :author, :prefix => "author"
end
