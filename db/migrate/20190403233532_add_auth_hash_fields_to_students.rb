class AddAuthHashFieldsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :uid, :string, default: ''
    add_column :students, :nickname, :string, default: ''
    add_column :students, :email, :string, default: ''
  end
end
