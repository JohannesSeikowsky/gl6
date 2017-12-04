class SessionsController < ApplicationController
  def create
  	@request = request.env['omniauth.auth'].to_yaml
  end
end
