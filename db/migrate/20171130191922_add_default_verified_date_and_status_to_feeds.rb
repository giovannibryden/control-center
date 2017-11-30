class AddDefaultVerifiedDateAndStatusToFeeds < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :feeds, :verified, false
  end
end
