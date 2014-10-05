class InfoController < ApplicationController
	def index
    @app = App.first
	end
end
