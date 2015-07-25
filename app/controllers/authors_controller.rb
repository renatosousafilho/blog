class AuthorsController < ApplicationController
	# GET /authors
	def index
		@authors = Author.all
	end

	# GET /authors/new
	def new
		@author = Author.new
	end

	# POST /authors
	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to authors_path, :notice => "Autor cadastrado com sucesso!"
		else
			flash[:notice] = "Autor nao pode ser cadastrado" 
			render :new 
		end
	end

	def edit
		@author = Author.find(params[:id])
	end

	private

	def author_params
		params.require(:author).permit(:name, :bio)
	end
end
