class MessagesController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	

	def index
		if params[:search]
	      	@messages = Message.search(params[:search]).order("created_at DESC")
	    else
			@messages = Message.all.order("created_at DESC")
		end
	end
	
	def cat
		if params[:search]
	      	@messages = Message.search(params[:search]).order("created_at DESC")
	    else
			@messages = Message.all.order("created_at DESC")
		end
	end
	
	def idea
		if params[:search]
	      	@messages = Message.search(params[:search]).order("created_at DESC")
	    else
			@messages = Message.all.order("created_at DESC")
		end
	end
	
	def proj
		if params[:search]
	      	@messages = Message.search(params[:search]).order("created_at DESC")
	    else
			@messages = Message.all.order("created_at DESC")
		end
	end
	
	
	def show
		if params[:search]
	      	@messages = Message.search(params[:search]).order("created_at DESC")
	    else
			@messages = Message.all.order("created_at DESC")
		end
	end

	def new
		@message = current_user.messages.build
	end

	def create
		@message = current_user.messages.build(message_params)
		if @message.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @message.update(message_params)
			redirect_to message_path
		else
			render 'edit'
		end
	end

	def destroy
		@message.destroy
		redirect_to root_path
	end

	private
		def message_params
			params.require(:message).permit(:article_type, :title, :description, :image, :parent)
		end

		def find_message
			@message = Message.find(params[:id])
		end
end
