class SessionsController < ApplicationController

   
    def welcome
        
    end

    def destroy
       session.delete(:user_id)
       redirect_to root_path
    end

    def new 
        @user = User.new
    end

    def create
        #check for omniauth providers here.  If none, then do this:
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Login Failed.  Please try again."
            redirect_to login_path           
        end
    end

    def omniauth
        @user = User.create_by_github_omniauth(auth)
        binding.pry
         #so there's a first name!  Maybe I should have a username?
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end     

    private

    def auth
        request.env['omniauth.auth']
    end



end