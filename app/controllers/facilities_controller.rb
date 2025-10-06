class FacilitiesController < ApplicationController
  before_action :set_facility, only: %i[show edit destroy]
  def index
    @facilities = Facility.all
  end

  def show
  end

  def new
    @facility = Facility.new
  end
  def destroy
  end
  
  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to @facility, notice:"Facility created successfully!"
    else
      puts @facility.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  private
  def set_facility
    @facility=Facility.find(params[:id])
  end
  def facility_params
    params.require(:facility).permit(:name,:founded,:address,:category,:status,:operating_hours,:rules,:is_reservable,:capacity,:phone_contact,:image_url)
  end
end
