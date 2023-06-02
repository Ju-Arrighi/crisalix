class UsersController < ApplicationController
  before_action :authenticate_user!
  # @user = current_user

  def home

  end

  def index

  end
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :specialty, :is_doctor)
  end
end

# def edit
#   @first_name = first_name
# end
