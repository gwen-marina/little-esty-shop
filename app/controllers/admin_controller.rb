class AdminController < ApplicationController

  def index
    @merchants = Merchant.all
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def show_2 
    @merchant = Merchant.find(params[:merchant_id])
  end

  def edit
    @merchant = Merchant.find(params[:merchant_id])
  end

  def update 
    merchant = Merchant.find(params[:merchant_id]) 
    merchant.update(name: params[:name])
    redirect_to "/admin/merchants/#{merchant.id}"
    flash.notice = 'The information has been successfully updated'
  end
end