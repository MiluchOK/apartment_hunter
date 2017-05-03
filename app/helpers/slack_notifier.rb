require 'slack-notifier'

class SlackNotifier

  def initialize
    @notifier = Slack::Notifier.new("https://hooks.slack.com/services/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",
                                    channel: "#general", username: "notifier")
  end

  def notification(message)
    @notifier.ping(message, channel: get_channel(:notification))
  end

  private
  def get_channel(channel)
    #Should return the exact channel for that type
    case channel
      when :notification
        return '#prod_notifications' if Rails.env.production?
        return '#test_notifications'
    end
  end
end
