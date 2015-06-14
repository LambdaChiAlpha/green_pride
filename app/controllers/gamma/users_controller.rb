class Gamma::UsersController < GammaController
  def index
    @users = User.order(zeta_number: :desc).paginate(page: params[:page], per_page: params[:per_page])

    render layout: "wide"
  end

  def invite
  end
end
