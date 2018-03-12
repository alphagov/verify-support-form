class Support < ApplicationRecord
  attr_accessor :email, :name, :message, :service, :subject

  validates_presence_of :email, :name, :message, :service
end
