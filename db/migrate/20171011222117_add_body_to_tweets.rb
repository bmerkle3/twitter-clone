class AddBodyToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :body, :string
  end
end
