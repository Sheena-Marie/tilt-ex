class IndicesController < ApplicationController
  before_action :set_index, only: [:show, :edit, :update, :destroy]

  require 'ostruct'
  require 'json'

  def index
    response = HTTParty.get('https://www.tilt.com/tilts/lets-get-allysa-to-the-rio-olympics/stats.json')
    obj = JSON.parse(response, object_class: OpenStruct)

    @contributors = obj.campaign.contributions
    @raised_amount = obj.campaign.quantity_text
    # @minutes = obj.campaign.expires_in.minutes
    # @hours = obj.campaign.expires_in.hours
    # @days = obj.campaign.expires_in.days
    # @seconds = obj.campaign.expires_in.seconds

    # count down expiry, from rails
    @countdown_expiry = obj.campaign.expires_in
  end

  # commenting out all the info that came with Rails Scaffold for now as I might need some of it, I might need to change some of it, I might not need it, but I don't want to delete it yet just in case.



  # # GET /indices
  # # GET /indices.json
  # def index
  #   @indices = Index.all
  # end
  #
  # # GET /indices/1
  # # GET /indices/1.json
  # def show
  # end
  #
  # # GET /indices/new
  # def new
  #   @index = Index.new
  # end
  #
  # # GET /indices/1/edit
  # def edit
  # end
  #
  # # POST /indices
  # # POST /indices.json
  # def create
  #   @index = Index.new(index_params)
  #
  #   respond_to do |format|
  #     if @index.save
  #       format.html { redirect_to @index, notice: 'Index was successfully created.' }
  #       format.json { render :show, status: :created, location: @index }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @index.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /indices/1
  # # PATCH/PUT /indices/1.json
  # def update
  #   respond_to do |format|
  #     if @index.update(index_params)
  #       format.html { redirect_to @index, notice: 'Index was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @index }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @index.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /indices/1
  # # DELETE /indices/1.json
  # def destroy
  #   @index.destroy
  #   respond_to do |format|
  #     format.html { redirect_to indices_url, notice: 'Index was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_index
  #     @index = Index.find(params[:id])
  #   end
  #
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def index_params
  #     params.fetch(:index, {})
  #   end
end
