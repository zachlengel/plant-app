class SchedulesController < ApplicationController
  before_action :authenticate_user
  
  def index
    @schedules = current_user.schedules
    render :index
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
    render :show
  end

  def create
    @schedule = Schedule.new(
    user_id: current_user.id,
    plant_id: params[:plant_id],
    watering_start_date: params[:watering_start_date]
  )
  if @schedule.save
    render json: { message: "Added to your schedule!"}, status: :created
  else
    render json: { errors: user.errors.full_messages }, status: :bad_request
  end
end

def destroy
    @schedule = Schedule.find_by(id: params["id"])
    @schedule.destroy
    render json: { message: "This schedule has been removed." }
  end

  def update
    @schedule = Schedule.find_by(id: params["id"])
    @schedule.update(
      watering_start_date: params["watering_start_date"] || @schedule.watering_start_date,
    )
    if @schedule.valid?
      render json: { message: "Your schedule has been updated!"}
    else
      render json: { errors: @schedule.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
