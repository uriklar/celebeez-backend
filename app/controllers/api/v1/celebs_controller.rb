module Api
  module V1
    class CelebsController < ApplicationController
      before_action :set_celeb, only: [:show, :edit, :update, :destroy]

      respond_to :json
      # GET /celebs
      # GET /celebs.json
      def index
        respond_with Celeb.all
      end

      # GET /celebs/1
      # GET /celebs/1.json
      def show
        respond_with @celeb
      end

      # POST /celebs
      # POST /celebs.json
      def create
        respond_with Celeb.create(celeb_params)
      end

      # PATCH/PUT /celebs/1
      # PATCH/PUT /celebs/1.json
      def update
        respond_with @celeb.update(celeb_params)
      end

      # DELETE /celebs/1
      # DELETE /celebs/1.json
      def destroy
        @celeb.destroy
        respond_to do |format|
          format.html { redirect_to celebs_url, notice: 'Celeb was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_celeb
          @celeb = Celeb.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def celeb_params
          params.require(:celeb).permit(:first_name, :last_name)
        end
    end
  end
end

