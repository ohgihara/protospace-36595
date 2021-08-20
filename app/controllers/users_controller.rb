class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end
end
