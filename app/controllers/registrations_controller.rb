class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_user_instrument_path(resource) if is_navigational_format?
  end
end
