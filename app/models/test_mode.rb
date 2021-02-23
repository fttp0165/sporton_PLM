class TestMode < ApplicationRecord
  belongs_to :project
  has_many :test_items
  validates :law_name, presence: true
  has_many :comments, as: :commentable
  accepts_nested_attributes_for :test_items,reject_if: :all_blank,allow_destroy: true
end
