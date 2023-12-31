class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: {
    scope: :list,
    message: 'There should only be one movie for one list!'
  }
end
