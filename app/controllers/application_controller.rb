class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  rescue_from ActionController::RoutingError do |exception|
	  logger.error 'Routing error occurred'
	  redirect_to(root_path)
  end

  private
  def set_search
    @q= Post.search(params[:q])
  end
end
