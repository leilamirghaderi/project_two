class RemovestudentIDfromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :studentID
  end
end
