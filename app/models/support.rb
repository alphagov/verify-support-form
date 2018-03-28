class Support < ApplicationRecord
  attr_accessor :your_email_address, :your_name, :message, :service_name, :subject, :email_addresses_of_anyone_else_you_want_to_be_copied_in

  validates_format_of :email_addresses_of_anyone_else_you_want_to_be_copied_in, :allow_blank => true, :with => /(\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})(,\s*([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,}))*\z)/i
  validates_format_of :your_email_address, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :your_email_address, :your_name, :message, :service_name
end
