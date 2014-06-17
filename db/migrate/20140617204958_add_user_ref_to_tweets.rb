class AddUserRefToTweets < ActiveRecord::Migration
  def change
    add_reference :tweets, :user, index: true
  end
end
