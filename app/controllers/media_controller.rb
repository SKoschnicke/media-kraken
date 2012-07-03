class MediaController < ApplicationController

  def create
    if session[:user_id].nil? or (@user = User.find session[:user_id]).nil?
      head 401 # Unauthorized
    else
      if params[:qqfile]
        @media = @user.media.new :user_id => session[:user_id]
        ## IE acts differently
        file = params[:qqfile].is_a?(ActionDispatch::Http::UploadedFile) ? params[:qqfile] : params[:file]
        @media.file = file
        xhr_create
      else
        super
      end
    end
  end

  def xhr_create
    if @media.save
      render :json => { success: true }
    else
      Rails.logger.error @media.errors.inspect
      render :json => @media.errors.to_json
    end
  end

end
