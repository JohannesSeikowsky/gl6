class AuthorsController < ApplicationController

  def create
    @author = Author.new(authors_params)
    GeneralMailer.author_sign_up(params[:author][:email]).deliver
    if @author.save
      redirect_to thank_you_path
    else
      redirect_to thank_you_path
    end
  end

  def authors_params
    params.require(:author).permit(:use_medium_img, :posts_to_import, :demanded_features, :full_name, :email, :password, :import_permission, :url_investigation_requested, :url_feature, :email_list_feature, :contact_me_feature, :add_pages_feature, :about_me_feature)
  end

end