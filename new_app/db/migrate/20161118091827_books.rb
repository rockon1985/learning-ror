class Books < ActiveRecord::Migration[5.0]
	def self.up
		add_column :books, :title, :string, :limit => 32, :null => false
		add_column :books, :price, :float
		add_column :books, :subject_id, :integer
		add_column :books, :description, :text
	end

	def self.down
		remove_column :books, :title
		remove_column :books, :price
		remove_column :books, :subject_id
		remove_column :books, :description
	end
end
