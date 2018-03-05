class CreateChangedFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :changed_files do |t|
      t.string :file_name
      t.string :file_path
      t.integer :status

      t.timestamps
    end
  end
end
