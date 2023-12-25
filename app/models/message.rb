class Message < ApplicationRecord
    validates :email, presence: true
    validates :subject, presence: true
    validates :message, presence: true
end
