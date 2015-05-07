require 'active_record'
require 'pg' # or 'pg' or 'sqlite3'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql', # or 'postgresql' or 'sqlite3'
  host:     'localhost',
  database: 'teacher_data'
)

def reset_database
  ActiveRecord::Schema.define do
    drop_table :teachers
    create_table :teachers, primary_key: 'id' do |table|
      table.column :name, :string
      table.column :county, :string
      table.column :district, :string
      table.column :school, :string
      table.column :experience, :string
      table.column :salary, :money
      table.column :job_1, :string
      table.column :sub_category, :string
    end
  end
end

class Teacher < ActiveRecord::Base
  def self.non_teachers
    words_to_exclude = ['superintendent', 'supervisor', 'dean', 'supervisor', 'counselor', 'coordinator', 'custodial', 'director']

    relation = self.send(:where, "lower(job_1) like '%principal%'")

    words_to_exclude.each do |word|
      relation += self.send(:where, "lower(job_1) like '%#{word}%'")
    end

    relation.uniq
  end

  def self.teachers
    where.not(id: non_teachers.map(&:id))
  end
end

binding.pry
