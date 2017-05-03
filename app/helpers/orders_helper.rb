module OrdersHelper
  def new_order_notification(order)
    slack = SlackNotifier.new
    slack.notification("Someone submitted an application! Email: '#{order.email}'. Please check admin site for details.")
  end
end
