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
  		@reminder = @user.reminders.build(reminder_params)
  		if @reminder.save
  			redirect_to new_reminder_path(content: reminder_params[:content]), notice: "Reminder set. Back to Dashboard or another one?"
  		else
  			redirect_to new_reminder_path(content: reminder_params[:content]), notice: "didnt work, try again."
  		end
  	else
  		redirect_to root_path, notice: "please login."
  	end
  end

  def all
  	@all_reminders = Reminder.all
  end

  # reminder params
  def reminder_params
  	params.require(:reminder).permit(:content, :date)
  end
end
