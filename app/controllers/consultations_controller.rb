class ConsultationsController < ApplicationController
  def index
    # @user = current_user
    @users = User.all
    @doctors = []
    @patients = []
    # @view = []
    current_user.each do |user|
      if doctor?(user)
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
