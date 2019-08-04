class CreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :friend, null: false, foreign_key: true, foreign_key: {to_table: :friend_requests}

      t.timestamps
    end
  end
end
