class ConsultationsController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @doctors = []
    @patients = []
    @users.each do |user|
      if user.is_doctor == true
        @doctors << user
      else
        @patients << user
      end
    end
  end

  def create

  end

  def doctor?(user)
    user.is_doctor
  end
end

# if @user.is_doctor == nil
#   redirect_to edit_user_registration_path
# else
#   render consultations
# end
