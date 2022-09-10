class Item < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, presence: { message: "must be given please" }
end
