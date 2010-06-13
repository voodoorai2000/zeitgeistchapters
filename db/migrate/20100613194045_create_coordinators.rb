class CreateCoordinators < ActiveRecord::Migration
  def self.up
    create_table :coordinators do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :skype
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :coordinators
  end
end
