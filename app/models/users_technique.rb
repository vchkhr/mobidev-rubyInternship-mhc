class UsersTechnique < ApplicationRecord
  belongs_to :user
  belongs_to :technique
end
