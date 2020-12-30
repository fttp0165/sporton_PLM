class Comment < ApplicationRecord
      belongs_to :projects
      belongs_to :users
      belongs_to :test_items 
      belongs_to :test_modes
end
