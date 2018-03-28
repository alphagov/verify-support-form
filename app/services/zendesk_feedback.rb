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
        #{params[:service_name]}
        EOF
      },
      requester: {
        name: params[:your_name],
        email: params[:your_email_address]
      },
      collaborators: params[:email_addresses_of_anyone_else_you_want_to_be_copied_in]
    }

    response = @client.tickets.create!(ticket)

    { success: true, ticket_id: response.id }
  rescue ZendeskAPI::Error::ClientError => e
    logger.debug("Feedback ticket creation failed with status: #{e.response.status} and content: #{e.response.body}")

    { success: false, message: response.body }
  end
end
