class CreateChannelposts < ActiveRecord::Migration[5.2]
  def change
    create_table :channelposts do |t|
      t.string :title
      t.text :body
      t.text :link

      t.timestamps
    end
  end
end
