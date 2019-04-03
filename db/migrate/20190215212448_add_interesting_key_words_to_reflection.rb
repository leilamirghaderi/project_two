class AddInterestingKeyWordsToReflection < ActiveRecord::Migration[5.2]
  def change
    add_column :reflections, :interesting_key_words, :string
  end
end
