class AddIndexToReplies < ActiveRecord::Migration
  def change
    add_index :replies, :comment_id
  end
end
