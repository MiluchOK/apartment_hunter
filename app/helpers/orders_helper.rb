module OrdersHelper
  def new_order_notification(order)
    email = OrderMailer.new_order_email(order)
    email.deliver
    slack = SlackNotifier.new
    slack.notification("Someone submitted an application! Email: '#{order.email}'. Please check admin site for details.")
  end
end
