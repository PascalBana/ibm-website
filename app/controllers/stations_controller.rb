class StationsController < ApplicationController

    # GET /rentals or /rentals.json
    def index
      @stations = Station.all
    end

    # GET /rentals/1 or /rentals/1.json
    def show
    end

    # GET /rentals/new
    def new
      @station = Station.new
    end

    # GET /rentals/1/edit
    def edit
    end

    # POST /rentals or /rentals.json
    def create
      @station = Station.new(station_params)

      respond_to do |format|
        if @station.save
          format.html { redirect_to rental_url(@station), notice: "Station was successfully created." }
          format.json { render :show, status: :created, location: @station }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @station.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /rentals/1 or /rentals/1.json
    def update
      respond_to do |format|
        if @rental.update(rental_params)
          format.html { redirect_to station_url(@station), notice: "Station was successfully updated." }
          format.json { render :show, status: :ok, location: @station}
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @station.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /rentals/1 or /rentals/1.json
    def destroy
      @station.destroy

      respond_to do |format|
        format.html { redirect_to stations_url, notice: "Station was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_station
        @station = Station.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def station_params
        params.require(:station).permit(:name, :user_id, :station_type_id)
      end
end
