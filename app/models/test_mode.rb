class TestMode < ApplicationRecord
  belongs_to :project
  has_many :test_items
  validates :law_name, presence: true
end
