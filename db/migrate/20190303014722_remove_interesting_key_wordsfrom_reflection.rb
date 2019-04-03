class RemoveInterestingKeyWordsfromReflection < ActiveRecord::Migration[5.2]
  def change
    remove_column :reflections, :interesting_key_words, :string
  end
end
