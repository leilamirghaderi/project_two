class CreateReflections < ActiveRecord::Migration[5.2]
  def change
    create_table :reflections do |t|
      t.integer :week
      t.string :topic
      t.text :reaction

      t.timestamps
    end
  end
end
