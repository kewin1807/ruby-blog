class Article < ApplicationRecord
  # include concern
  include Visible

  # define relation with other model; dependent => can remove foreign keys when delete article (delete associated objects)
  has_many :comments, dependent: :destroy
  # validate field
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
