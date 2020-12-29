class TestMode < ApplicationRecord
  belongs_to :project
  validates :law_name, presence: true
end
