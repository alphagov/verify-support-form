require 'zendesk_api'

class ZendeskFeedback
  def initialize
    @client = ZendeskAPI::Client.new do |config|
      config.url = ENV.fetch('ZENDESK_URL')
      config.username = ENV.fetch('ZENDESK_USERNAME')
      config.token = ENV.fetch('ZENDESK_TOKEN')
    end
  end

  def send_feedback(params)
    ticket = {
      subject: params[:subject],
      comment: {
        body: <<~EOF
        Message:
        #{params[:message]}

        Service:
        #{params[:service]}
        EOF
      },
      requester: {
        name: params[:name],
        email: params[:email]
      },
      collaborators: params[:collaborators]
    }

    response = @client.tickets.create!(ticket)

    { success: true, ticket_id: response.id }
  rescue ZendeskAPI::Error::ClientError => e
    logger.debug("Feedback ticket creation failed with status: #{e.response.status} and content: #{e.response.body}")

    { success: false, message: response.body }
  end
end
