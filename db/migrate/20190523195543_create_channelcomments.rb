class CreateChannelcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :channelcomments do |t|
      t.integer :comment_id
      t.text :body

      t.timestamps
    end
  end
end
