class StaticController < ApplicationController
 	def home
 		@posts = Post.all
 	end
end