class AddLikesCountToCoaches < ActiveRecord::Migration[6.1]
  def self.up
    add_column :coaches, :likes_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :coaches, :likes_count
  end
end
