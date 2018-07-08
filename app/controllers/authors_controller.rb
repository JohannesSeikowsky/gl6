class AuthorsController < ApplicationController

  def create
    @author = Author.new(authors_params)
    if @author.save
      redirect_to thank_you_path
      begin
        GeneralMailer.author_sign_up(params[:author][:email]).deliver
      rescue
        # pass
      end
    else
      redirect_to thank_you_path
    end
  end

  def authors_params
    params.require(:author).permit(:use_medium_img, :posts_to_import, :demanded_features, :full_name, :email,:password, :password_confirmation, :import_permission, :url_investigation_requested, :url_feature, :email_list_feature, :contact_me_feature, :add_pages_feature, :about_me_feature)
  end

end
