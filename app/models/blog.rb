class Blog < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5, maximum: 25 }
end
