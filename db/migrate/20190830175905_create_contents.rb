class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string      :name
      t.text        :title
      t.text        :text
      t.timestamps null: true
    end
  end
end
