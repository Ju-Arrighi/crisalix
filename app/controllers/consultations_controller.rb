class ConsultationsController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    if @user.is_doctor == nil
      redirect_to edit_user_registration_path
    else
      render consultations
    end
  end

  def create

  end
end
