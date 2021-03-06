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
        GeneralMailer.new_reminder_notifier().deliver
        redirect_to user_account_path(id: current_user.id), notice: "Reminder is set. Set another one?"
  		else
  			redirect_to new_reminder_path(content: reminder_params[:content]), notice: "didnt work, try again."
  		end
  	else
  		redirect_to root_path, notice: "please login."
  	end
  end

  # reminder params
  def reminder_params
  	params.require(:reminder).permit(:content, :date)
  end
end
