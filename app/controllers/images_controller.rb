class ImagesController < ApplicationController

	def image_params
	  params.require(:image) # .permit(:author_name, :body)
	end

end
