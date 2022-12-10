class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    user = User.all
    render json: user
  end
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

#   def show
#     user = User.find_by(id: session[:user_id])
#     render json: user
#   end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user, status: :created
  end
  # def show
  #   user = User.find_by(id: session[:user_id])
  #   if user
  #     render json: user 
  #   else
  #     render json: { error: "Not authorized" }, status: :unauthorized
  #   end
  # end


  private

  def find_user
    User.find(params[:id])
  end

  def user_params
    params.permit(:name, :email, :phone_number, :password, :is_admin)
  end

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
