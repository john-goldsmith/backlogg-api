class InitialMigration < ActiveRecord::Migration
  def change

    create_table :columns do |t|
      t.string :name
      t.string :slug
      t.references :project
      t.timestamps
    end

    create_table :templates do |t|
      t.string :name
      t.string :slug
      t.boolean :is_active
      t.timestamps
    end

    create_table :template_columns do |t|
      t.string :name
      t.string :slug
      t.references :template
      t.timestamps
    end

    create_table :comments do |t|
      t.string :body
      t.references :task
      t.references :user
      t.timestamps
    end

    create_table :projects do |t|
      t.string :name
      t.string :slug
      t.timestamps
    end

    create_table :tasks do |t|
      t.string :name
      t.string :slug
      t.references :column
      t.timestamps
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.timestamps
    end

  end
end
