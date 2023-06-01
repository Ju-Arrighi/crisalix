class ApplicationController < ActionController::Base
  before_action :authenticate_user!

   protected

  def after_sign_in_path_for(resource)
    # Customize the redirect path based on your requirements
    if resource.is_a?(User)
      # Redirect to a specific route for authenticated users
      consultations_path
    else
      # Redirect to a different route for other types of resources
      root_path
    end
  end
end
