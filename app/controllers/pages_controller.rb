class PagesController < ApplicationController
	def index
		@pages = Page.all
		@albums = Album.all
	end
	def new
		@page = Page.new
	end
	def create
		@page = Page.create(params[:page])
		redirect_to root_path
	end
	def edit
		@page = Page.find(params[:id])
	end
	def update
		@page = Page.find(params[:id])
		@page.update_attributes(params[:page])
		redirect_to root_path
	end
end
