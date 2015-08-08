class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to comments_path, :notice => "Cadastrado com sucesso"
		else
			flash[:notice] = "Comentatio nao pode ser salvo" 
			render :new
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:body,:post_id)
	end
end