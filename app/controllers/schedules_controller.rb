class SchedulesController < ApplicationController
  before_action :authenticate_user
  
  def index
    @schedules = current_user.schedules
    render :index
  end

  def create
    @schedule = Schedule.new(
    user_id: current_user.id,
    plant_id: params[:plant_id],
    image_url: params[:image_url],
    watering_start_date: params[:watering_start_date]
  )
  if @schedule.save
    render json: { message: "Added to your schedule!"}, status: :created
  else
    render json: { errors: user.errors.full_messages }, status: :bad_request
  end
end
end
