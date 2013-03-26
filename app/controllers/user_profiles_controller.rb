class UserProfilesController < ApplicationController
  before_filter :authenticate_user!
  # GET /user_profiles/1/edit
  def edit
    #@user_profile = UserProfile.find(params[:id])
    @user = User.find(params[:id])

    if @user.user_profile.nil?
      @user.user_profile = UserProfile.new
    end

    @user_profile = @user.user_profile
  end

  # PUT /user_profiles/1
  # PUT /user_profiles/1.json
  def update
    @user_profile = UserProfile.find(params[:id])

    respond_to do |format|
      if @user_profile.update_attributes(params[:user_profile])
        format.html { redirect_to edit_user_profile_path(@user_profile), :notice => 'The user profile was updated successfully!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_password
    @user  = User.find(current_user.id)
    if  @user.update_with_password(params[:user])
      # Sign in the user by passing validation in case his password changed
      sign_in  @user , :bypass => true
      redirect_to edit_user_profile_path(@user.user_profile), :notice => 'The user password was updated successfully!'
    else
      render action: "edit", :id => @user.user_profile.id
    end
  end
end
