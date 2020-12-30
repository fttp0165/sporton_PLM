class TestItem < ApplicationRecord
  belongs_to :test_mode
  has_many :comments
end
