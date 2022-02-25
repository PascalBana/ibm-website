class StationsController < ApplicationController

    # GET /rentals or /rentals.json
    def index
      @stations = Station.all
    end

    # GET /rentals/1 or /rentals/1.json
    def show
      @station = Station.find(params[:id])
    end

    # GET /rentals/new
    def new
      @station = Station.new
      @station_types = StationType.all.map {|x| [x.name, x.id]}
      @user = current_user.id
    end

    # GET /rentals/1/edit
    def edit
      @station = Station.find(params[:id])
      @station_types = StationType.all.map {|x| [x.name, x.id]}
      @user = current_user.id
    end

    # POST /rentals or /rentals.json
    def create
      @station = Station.new(station_params)
      @station_types = StationType.all.map {|x| [x.name, x.id]}
      @user = current_user.id
      respond_to do |format|
        if @station.save
          format.html { redirect_to station_url(@station), notice: "Station was successfully created." }
          format.json { render :show, status: :created, location: @station }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @station.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /rentals/1 or /rentals/1.json
    def update
      @station = Station.new(station_params)
      @station_types = StationType.all.map {|x| [x.name, x.id]}
      @user = current_user.id
      respond_to do |format|
        if @station.update(station_params)
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
