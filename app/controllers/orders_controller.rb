class OrdersController < ApplicationController
  def new
    @person = Order.new(order_params)
    if @person.valid?
      @person.save!
    else
      raise 'Cannot create the order!'
    end
  end

  def update
  end

  def delete
  end

  def order_params
    params.permit(:name, :email, :message)
  end
end
