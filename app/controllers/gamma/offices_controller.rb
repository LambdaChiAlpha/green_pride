class Gamma::OfficesController < GammaController
  skip_before_filter :access_policy, only: [:index, :show]

  def index
    @offices = Office.all
  end

  def show
    @office = Office.find(params[:id])
  end

  def new
    @office = Office.new
  end
end
