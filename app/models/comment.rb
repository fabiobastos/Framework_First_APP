class Comment < ActiveRecord::Base

	# validations
	validates :content, presence: true, allow_blank: false
	validates :commentable_id, presence: true
	validates :commentable_type, presence: true

	#scopes
	default_scope {order('comments.created_at DESC')}

	# Associations
	belongs_to :commentable, :polymorphic => true

end