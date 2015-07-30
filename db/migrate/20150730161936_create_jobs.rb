class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_description
      t.string :your_company
      t.string :linkto_job
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
