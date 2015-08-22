class Author < User
	has_one :author_role, :foreign_key => "user_id"

	after_create :create_role

	def create_role
		AuthorRole.create :name => self.email, :bio => "Preencha as informaoces", 
		:user_id => self.id
	end

end
