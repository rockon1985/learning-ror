class Subjects < ActiveRecord::Migration[5.0]
  def self.up
    add_column :subjects, :name, :string
  end

  def self.down
    remove_column :subjects, :name
  end
end
