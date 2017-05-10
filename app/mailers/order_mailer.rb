class OrderMailer < ApplicationMailer
  def new_order_email(order)
    @order = order
    mail(to: "#{@order.email}", subject: 'Apartment Hunter application')
  end
end
