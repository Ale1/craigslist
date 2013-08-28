class Post < ActiveRecord::Base
  belongs_to :section
  #add the belongs to...
  # Remember to create a migration!
end
