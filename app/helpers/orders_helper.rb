require 'slack-notifier'

module OrdersHelper
  def new_order_notification(order)
    notifier = Slack::Notifier.new 'https://hooks.slack.com/services/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' do
      defaults channel: "#signups",
               username: "notifier"
    end

    notifier.ping "Someone submitted an application! Email: '#{order.email}'. Please check admin site for details."
  end
end
