class Support < ApplicationRecord
  attr_accessor :email, :name, :message, :subject

  validates_presence_of :email, :name, :message
end
