class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @vendor = Vendor.find(params[:vendor_id])
# Access all orders for that vendor
    @order = @vendor.orders
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @vendor = Vendor.find(params[:vendor_id])
    @order = @vendor.orders.find(params[:id])
  end

  # GET /orders/new
  def new
    #@vendor = Vendor.find(params[:vendor_id])
    #@order = @vendor.orders.build
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @vendor = Vendor.find(params[:vendor_id])
    @order = @vendor.orders.find(params[:id])
  end

  # POST /orders
  # POST /orders.json


  def create

    @vendor = Vendor.find(params[:vendor_id])

    @order = @vendor.orders.build(params.require(:order).permit(:origin, :destination, :plan, :status, :insurance, :vendor_id))
    if @order.save
# Save the order successfully
      redirect_to vendor_order_url(@vendor, @order)
    else
      render :action => "new"
    end

  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    @vendor = Vendor.find(params[:vendor_id])
    @order = Order.find(params[:id])
    if @order.update_attributes(params.require(:order).permit(:origin, :destination, :plan, :status, :insurance, :vendor_id))
      redirect_to vendor_order_url(@vendor, @order)
    else
      render :action => "edit"
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @order = Order.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to vendor_order_path(@vendor) }
      format.xml { head :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:origin, :destination, :plan, :status, :insurance, :vendor_id)
    end
end
