class PlantsController < ApplicationController

    def index
        render json: Plant.all, status: :ok
    end

    def show
        render json: find_pla, status: :ok
    end

    def create
        render json: Plant.create!(pla_params), status: :created
    end

    def update
        render json: find_pla.update!(pla_params), status: :accepted
    end

    def destroy
        find_pla.destroy
        head :no_content
    end

    private

    def pla_params
        params.permit(:name, :picture_url, :last_watered, :species_id, :user_id, :store_id)
    end

    def find_pla
        Plant.find(params[:id])
    end
end
