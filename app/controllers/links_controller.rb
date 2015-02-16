class LinksController < ApplicationController

	def show
	end

	def new
		@link = Link.new
	end

	def create 
		Link.create(link_params)
	end

	private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def link_params
      params.require(:link).permit(:title, :url)
    end

end
