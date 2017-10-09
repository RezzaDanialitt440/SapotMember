class UsersController < ApplicationController

  def profile
  end
  
  def edit_profile
    # binding.pry
    if params[:profile].present?
      current_user.update(avatar: params[:profile][:avatar]) if params[:profile][:avatar].present?
      current_user.update(about: params[:profile][:about]) if params[:profile][:about].present?
    end
    if params[:education].present?
      current_user.educations.create(institure_name: params[:education][:institure_name], description: params[:education][:description])
    end
    redirect_to profile_users_path, notice: "profile updated"
  end

end