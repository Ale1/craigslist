class Section < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  # Remember to create a migration!
end
