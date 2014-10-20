class LikesController < ActionController::Base
	def create
	end
	redirect_to gallery_image_path(@image.gallery, @image)

	def gallery
	end
end