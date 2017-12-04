class SessionsController < ApplicationController
  def create
  	@request = request.env['omniauth.auth']
  end
end