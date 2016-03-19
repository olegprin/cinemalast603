class [scope]::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
   helper_method :resource_name, :resource, :devise_mapping
  respond_to :html, :js
  # GET /resource/sign_in
  #def new
    #super
    #self.resource = resource_class.new(sign_in_params)
    #clean_up_passwords(resource)
    #yield resource if block_given?
    #respond_modal_with :resource
  #end

  # POST /resource/sign_in
  def create
    resource = User.find_for_database_authentication(email: params[:user][:email])
    return invalid_login_attempt unless resource
    if resource.valid_password?(params[:user][:password])
      sign_in :user, resource
      return render nothing: true
    end
    invalid_login_attempt
 end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected
  def invalid_login_attempt
    set_flash_message(:alert, :invalid)
    render json: flash[:alert], status: 401
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
