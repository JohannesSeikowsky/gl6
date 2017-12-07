class RemindersController < ApplicationController
  def new
  	if current_user
  		@content = params[:content]
  	else
  		redirect_to root_path, notice: "please login."
  	end
  end

  def create
   	if @user = current_user
  		@user.reminders.create(content: params[:reminder][:content],
  			date: params[:reminder][:date])
  		redirect_to new_reminder_path(content: params[:reminder][:content]), notice: "Set another reminder?"
  	else
  		redirect_to root_path, notice: "please login."
  	end
  end
end
