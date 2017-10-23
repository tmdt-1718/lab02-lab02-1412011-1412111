class SessionsController < ApplicationController
	 def new
	  end
	def show
    	@user = User.find_by id: params[:id]
  	end
	  def create
	    user = User.find_by mail: params[:session][:mail].downcase
	    if user && user.authenticate(params[:session][:password])
	      flash[:success] = "Login success"
	      log_in user
	      redirect_to user
	    else
	      flash[:danger] = "Invalid email/password combination"
	      render :new
	    end
	  end

	  def destroy
	  end
end
