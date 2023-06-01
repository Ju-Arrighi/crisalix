class UsersController < ApplicationController
  def edit
    @first_name = first_name
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :specialty, :is_doctor)
  end
end
