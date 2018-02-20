class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :nick
      t.string :channel
      t.text :message

      t.timestamps
    end
  end
end
