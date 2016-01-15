class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = current_user.listings.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:user_id, :address, :hometype, :roomtype, :number_of_beds, :bedtype, :listing_name, :summary, :country, :city, :address2, :state, :zipcode, :essentials, :tv, :cabletv, :aircond, :heating, :kitchen, :internet, :wireless, :anytime, :hottub, :washer, :pool, :dryer, :breakfast, :freeparking, :gym, :elevator, :fireplace, :intercom, :doorman, :shampoo, :hangers, :hairdryer, :iron, :laptopfriendly, :familyfriendly, :smoking, :events, :petsin, :wheelchair, :smokedetector, :carbonmonoxide_detector, :firstaid, :safetycard, :extinguisher, :extinguisher_location, :fire_alarm_location, :gas_shut_off_location, :emergency_exit, :emergency_phone, :the_space, :guest_access, :interactions, :other_things, :houserules, :neighbour_overview, :neighbour_getting_around, :current, :booking_mode, :available_mode, :number, :price)
    end
end
