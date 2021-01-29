class Adventure < ApplicationRecord
    has_many :events, dependent: :destroy
end
