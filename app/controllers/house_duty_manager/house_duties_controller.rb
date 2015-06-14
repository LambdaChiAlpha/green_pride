class HouseDutyManager::HouseDutiesController < HouseDutyManagerController
  def index
    @house_duties = HouseDutyManager::HouseDuty.all
  end

  def new
    @house_duty = HouseDutyManager::HouseDuty.new
  end

  def create
    house_duty = HouseDutyManager::HouseDuty.new(house_duty_params)

    if house_duty.save
      flash[:success] = "Created \"#{house_duty.name}\"!"
      redirect_to house_duty_manager_house_duties_path
    else
      redirect_to :back
    end
  end

  def edit
    @house_duty = HouseDutyManager::HouseDuty.find(params[:id])
  end

  def update
    house_duty = HouseDutyManager::HouseDuty.find(params[:house_duty_manager_house_duty][:id])
    house_duty.update_attributes(house_duty_params)
    if house_duty.save
      flash[:success] = "Updated \"#{house_duty.name}\"!"
      redirect_to house_duty_manager_house_duties_path
    else
      redirect_to :back
    end
  end

  private

  def house_duty_params
    params[:house_duty_manager_house_duty].permit(:name, :description, :default_count)
  end
end
