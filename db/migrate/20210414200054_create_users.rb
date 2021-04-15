# This migration file is created automatically by the model generation script
# Migrations provide a way to alter the structure of the database incrementally, so
# that our data model can adapt to changing requirements

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
