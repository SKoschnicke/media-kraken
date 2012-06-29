class MainController < ApplicationController

  def start
  end

  # gets POST with name from index
  def login
    user = User.find_by_name User.sanitize_name(params[:name])
    if user.nil?
      redirect_to root_url, alert: 'Dein Name ist mir nicht bekannt.'
    else
      session[:user_id] = user.id
      redirect_to overview_url
    end
  end

  # after login, user gets here
  def overview
    redirect_to root_url if session[:user_id].blank?
    @user = User.find session[:user_id]
    redirect_to root_url if @user.nil?
  end

  def logout
    reset_session
    redirect_to root_url, flash: {success: 'Du hast dich abgemeldet'}
  end

  # is called via ajax
  def media_list
    if session[:user_id].nil? or (@user = User.find session[:user_id]).nil?
      head 401 # Unauthorized
    else
      render :partial => 'media_list', :locals => {:media => @user.media}, :layout => false
    end
  end

end
