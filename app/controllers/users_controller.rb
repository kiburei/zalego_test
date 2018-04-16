class UsersController < Devise::RegistrationsController
  before_action :set_user, only: [:show]

  def show

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def configure_sign_up_params
    params.require(:user).permit(:f_name, :l_name, :gender, :language, :username)
  end

  def configure_account_update_params
    params.require(:user).permit(:f_name, :l_name, :gender, :language, :username)
  end

end
