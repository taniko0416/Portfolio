class Post < ApplicationRecord
  belongs_to :member

  scope :active, -> { where(is_hidden: false).order(created_at: :desc) }

  scope :not_reply, -> { active.where(post_id: nil) }

  # TODO: add validation for content
end
