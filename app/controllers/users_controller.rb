class UsersController < ApplicationController

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "You've created an account!"}, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

end
