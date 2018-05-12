class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search

  private
  def set_search
    @q= Post.search(params[:q])
  end
end
