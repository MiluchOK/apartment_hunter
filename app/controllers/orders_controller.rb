class OrdersController < ApplicationController

  include OrdersHelper

  def new

  end

  def create
    @person = Order.new(order_params)
    if @person.valid?
      @person.save!
      new_order_notification(@person)
      redirect_to action: 'new'
    else
      raise 'Cannot create the order!'
    end
  end

  def update
  end

  def show
    @order = Order.find(params[:id])
  end

  def delete
  end

  def order_params
    params.permit(:name, :email, :message)
  end
end
