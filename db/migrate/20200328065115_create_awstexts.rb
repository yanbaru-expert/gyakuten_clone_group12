class CreateAwstexts < ActiveRecord::Migration[6.0]
  def change
    create_table :awstexts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
