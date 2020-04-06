class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.text :title
      t.text :detail

      t.timestamps
    end
  end
end
