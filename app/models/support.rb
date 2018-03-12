class Support < ApplicationRecord
  attr_accessor :email, :name, :message, :service, :subject
  validates_format_of :email, :with => /(\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})(,\s*([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,}))*\z)/i
  validates_presence_of :email, :name, :message, :service
end
