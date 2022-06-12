class Api::V1::CarsController < ApplicationController
    protect_from_forgery with: :null_session
    def create
        car = Car.new car_params
        car.person_id = params[:person_id]
        car.save!
        render json: {id: car.id}
    end

    def show
        render json: car
    end

    def destroy
        car.destroy
        render(json: { status: 200 }, status: 200)
    end

    def update
        car.update!(car_params)
        render json: { id: car.id }
    end

    def index
        cars = Car.where person_id: params[:person_id]
        render json: cars
    end

    private

    def car
        @car ||= Car.find params[:id]
    end

    def car_params
        params.require(:car).permit(:year, :make, :model, :price, :person_id)
    end
end