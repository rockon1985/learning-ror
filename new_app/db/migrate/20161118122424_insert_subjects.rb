class InsertSubjects < ActiveRecord::Migration[5.0]
	def self.up
	  Subject.create :name => "Mythology"
	  Subject.create :name => "Fiction"
	  Subject.create :name => "Informative"
	  Subject.create :name => "History"
	  Subject.create :name => "Entertainment"
	end

	def self.down
	  drop_table :subjects
	end
end
