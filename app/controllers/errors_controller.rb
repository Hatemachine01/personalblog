class ErrorsController < ApplicationController
  def error_404
    redirect_to root_path
  end
end