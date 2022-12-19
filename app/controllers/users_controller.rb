class UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :user_validation

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user, status: :created
    end
end


private 

def user_params
    params.permit(full_name, email, age, gender, password_digest, phone_number, image_url)
end

def user_validation(valid)
    return render json: {errors: valid.record.errors.full_messages}, status: :unprocessable_entity