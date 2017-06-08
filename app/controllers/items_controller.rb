class ItemsController < ApplicationController
  protect_from_forgery


  require "rubygems"
  require "braintree"

  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = ENV['MERCHANT_ID']
  Braintree::Configuration.public_key = ENV['PUBLIC_KEY']
  Braintree::Configuration.private_key = ENV['PRIVATE_KEY']



  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @token = Braintree::ClientToken.generate
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
        respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def sale
    nonce = params[:payment_method_nonce]
    result = Braintree::Transaction.sale(
    :amount => "10.00", #could be any other arbitrary amount captured in params[:amount] if they weren't all $10.
    :payment_method_nonce => nonce,
    :options => {
      :submit_for_settlement => true
      }
    )
  end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :image_url)
    end
end
