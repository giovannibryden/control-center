class AddVerifiedToFeeds < ActiveRecord::Migration[5.0]
  def change
  	add_column :feeds, :verified, :string
  end
end
