class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.string :website
      t.string :status
      t.text :notes
      t.integer :coordinator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :chapters
  end
end
