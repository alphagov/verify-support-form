class Support < ApplicationRecord
  attr_accessor :email, :name, :message, :service, :subject, :collaborators

  validates_format_of :collaborators, :allow_blank => true, :with => /(\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})(,\s*([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,}))*\z)/i
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :email, :name, :message, :service
end
