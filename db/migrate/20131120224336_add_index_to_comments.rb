class AddIndexToComments < ActiveRecord::Migration
  def change
    add_index :comments, :_id
  end
end
