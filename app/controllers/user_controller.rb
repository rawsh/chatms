class UserController < ApplicationController
#before_filter :authenticate_user!
  def show
    @messages = Message.all.order("created_at DESC")
    @user = User.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end
  
  def index
    if params[:search]
	      	@users = User.search(params[:search]).order("created_at DESC")
	  else
			    @users = User.all.order("created_at DESC")
		end
  end
  
end