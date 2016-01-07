class UsersController < ApplicationController
  def home
    set_current_user
    end
 #...def login et def check..
 private

 



 def set_current_user
    if session[:user_id]
       @current_user =User.find(session[:user_id])
   end
  end
 

  def login
  session[:test] = "Valeur de test"
  end

def check

@current_user = User.where(name: params[:name],password:params[:password]).first
if @current_user
	flash[:info] = "Bienvenue #{@current_user.name} !"
	redirect_to "/users/home"
else
	flash[:info] = "Echec de la connexion"
	redirect_to "/users/login"
  end
 end
end
  