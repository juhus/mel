class AlbumsController < ApplicationController
	def new
		@album = Album.new
	end
	def create
		@album = Album.create(params[:album])
		redirect_to root_path
	end
	def edit
		@album = Album.find(params[:id])
	end
	def update
		@album = Album.find(params[:id])
		@album.update_attributes(params[:album])
		redirect_to root_path
	end
end
