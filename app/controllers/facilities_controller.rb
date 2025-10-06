class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
  end

  def show
  end

  def new
    @facility = Facility.new
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

  def facility_params
    params.require(:facility).permit(:name,:founded,:address,:category,:status,:operating_hours,:rules,:is_reservable,:capacity,:phone_contact,:image_url)
  end
end
