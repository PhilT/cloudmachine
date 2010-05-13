class CreateInstances < ActiveRecord::Migration
  def self.up
    create_table :instances do |t|
      t.string :name
      t.string :instance_id
      t.integer :image_id

      t.timestamps
    end

    create_table :images do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :instances
    drop_table :images
  end
end

