class Admin::AuthorsController < AdminController
	def index 
		@authors = Author.all
	end

	def new
		@author = Author.new 
	end

	def create
		@author = Author.new(author_params)
		user = User.create :email => "#{@author.name}@blog.com", :password => "changeme!", :role => :author
		@author.user = user
		if @author.save
			redirect_to authors_path, :notice => "Autor cadastrado com sucesso!"
		else
			flash[:notice] = "Autor nao pode ser cadastrado" 
			render :new 
		end
	end

	def  show
		@author = Author.find(params[:id])
	end

	private

	def author_params
		params.require(:author).permit(:name, :bio)
	end
end

