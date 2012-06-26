class MediaController < ApplicationController

  def create
    if params[:qqfile]
      @media = Media.new :user_id => session[:user_id]
      ## IE acts differently
      file = params[:qqfile].is_a?(ActionDispatch::Http::UploadedFile) ? params[:qqfile] : params[:file]
      @media.file = file
      xhr_create
    else
      super
    end
  end

  def xhr_create
    if @media.save
      render :json => { success: true }
    else
      render :json => @media.errors.to_json
    end
  end

end
