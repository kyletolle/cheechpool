class Smack < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :user_id, presence: true
  default_scope order: 'smacks.created_at DESC'
end