class Tweet < ApplicationRecord
    validates :message, presence: true
    validates :message, length: { maximun: 140 }
end

