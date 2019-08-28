class RemoveKeyConstraintAndAdjust < ActiveRecord::Migration[6.0]
  def change
    # add_reference :friendships, :friend, index: true
    remove_foreign_key :friend_requests, :friend_requests, column: :friend_id
    add_foreign_key :friend_requests, :users, column: :friend_id
  end
end
