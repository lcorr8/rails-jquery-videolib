class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def home
  end

  def after_sign_in_path_for(resource)
     sections_path
  end


  def study_suggestions
    @videos = Video.not_watched
  end
  
end
