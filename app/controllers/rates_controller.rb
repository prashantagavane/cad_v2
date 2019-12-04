class RatesController < ApplicationController
  before_action :set_rate, only: [:show, :edit, :update, :destroy]

  # GET /rates
  # GET /rates.json
  def index

    @vendor = Vendor.find(params[:vendor_id])
# Access all rates for that vendor
    @rate = @vendor.rates
  end

  # GET /rates/1
  # GET /rates/1.json
  def show
    @vendor = Vendor.find(params[:vendor_id])
    @rate = @vendor.rates.find(params[:id])
  end

  # GET /rates/new
  def new
    @vendor = Vendor.find(params[:vendor_id])
    @rate = @vendor.rates.build
  end

  # GET /rates/1/edit
  def edit
    @vendor = Vendor.find(params[:vendor_id])
    @rate = @vendor.rates.find(params[:id])
  end

  # POST /rates
  # POST /rates.json
  def create
    @vendor = Vendor.find(params[:vendor_id])

    @rate = @vendor.rates.build(params.require(:rate).permit(:origin, :destination, :basic, :advance, :premium, :insurance, :vendor_id))
    if @rate.save
# Save the rate successfully
      redirect_to vendor_rate_url(@vendor, @rate)
    else
      render :action => "new"
    end
  end


  # PATCH/PUT /rates/1
  # PATCH/PUT /rates/1.json
  def update
    @vendor = Vendor.find(params[:vendor_id])
    @rate = Rate.find(params[:id])
    if @rate.update_attributes(params.require(:rate).permit(:origin, :destination, :basic, :advance, :premium, :insurance, :vendor_id))
      redirect_to vendor_rate_url(@vendor, @rate)
    else
      render :action => "edit"
    end
  end

  # DELETE /rates/1
  # DELETE /rates/1.json
  def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @rate = Rate.find(params[:id])
    @rate.destroy
    respond_to do |format|
      format.html { redirect_to vendor_rate_path(@vendor) }
      format.xml { head :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate
      @rate = Rate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rate_params
      params.require(:rate).permit(:origin, :destination, :basic, :advance, :premium, :insurance, :vendor_id)
    end
end
