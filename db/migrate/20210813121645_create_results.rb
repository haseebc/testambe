class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :clientref
      t.string :firstname
      t.string :lastname
      t.string :dni
      t.string :clientemail
      t.string :result

      t.timestamps
    end
  end
end
