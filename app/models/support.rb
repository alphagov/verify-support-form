class Support < ApplicationRecord
  attr_accessor :email, :name, :message, :subject, :service

  validates_presence_of :email, :name, :message, :service
end
