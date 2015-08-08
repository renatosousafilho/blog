class AuthorsController < ApplicationController
	before_action :set_author, only: [:edit, :show, :update, :destroy, :posts]

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

	# GET /authors/:id/edit
	def edit
	end

	# GET /authors/:id
	def show
	end

	# PUT /authors/:id
	# PATCH /authors/:id
	def update
		if @author.update_attributes(author_params)
			redirect_to authors_path, :notice => "Autor #{@author.name} foi atualizado com sucesso"
		else
			render :edit
		end
	end

	# DELETE /authors/:id
	def destroy
		@author.destroy
		redirect_to authors_path, :notice => "Autor #{@author.name} foi excluido!"
	end

	def posts
		
	end

	
	private

	def author_params
		params.require(:author).permit(:name, :bio)
	end

	def set_author
		@author = Author.find(params[:id])
	end
end
