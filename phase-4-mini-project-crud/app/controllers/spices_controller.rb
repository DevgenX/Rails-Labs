class SpicesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_response_not_found
    def index 
        spice = Spice.all 
        render json: spice
    end

    def show 
        spice = find_spice
    end

    def create 
        spice = Spice.create(spice_params)
        render json: spice
    end

    def update 
        spice = find_spice 
        spice.update(spice_params)
        render json: spice 
    end

    def destroy 
        spice = find_spice
        spice.destroy
        head :no_content
    end

    private 

    def spice_params 
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def find_spice 
        Spice.find_by(id: params[:id])
    end

    def render_response_not_found
        render json: {error: 'Not Found'}, status: :not_found
    end

end
