class Task < ApplicationRecord
  belongs_to :list
  validates :name, presence: true,
                    length: { minimum: 5 }
  validates :description, presence: true,
                    length: { maximum: 25 }
end
