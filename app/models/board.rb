class Board < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: { maximum: 50 }
    validates :title, presence: true, length: { maximum: 100 }
end
