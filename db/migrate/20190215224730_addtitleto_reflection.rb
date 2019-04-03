class AddtitletoReflection < ActiveRecord::Migration[5.2]
  def change
          add_column :reflections, :title, :string
  end
end
