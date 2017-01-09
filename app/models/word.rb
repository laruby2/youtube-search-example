class Word < ApplicationRecord
  has_many :searches, dependent: :destroy
end
