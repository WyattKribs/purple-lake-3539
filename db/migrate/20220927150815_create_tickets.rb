class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :subject
      t.integer :age
      t.boolean :open

      t.timestamps
    end
  end
end