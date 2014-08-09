class InitialMigration < ActiveRecord::Migration

  def change

    create_table :columns do |t|
      t.string :name
      t.string :slug
      t.references :sprint
      t.boolean :is_active
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
      t.boolean :is_active
      t.timestamps
    end

    create_table :projects do |t|
      t.string :name
      t.string :slug
      t.string :code, limit: 2
      t.references :user
      t.boolean :is_active
      t.timestamps
    end

    create_table :tasks do |t|
      t.string :name
      t.string :slug
      t.references :column
      t.integer :parent_task
      t.boolean :comments_allowed, default: true
      t.boolean :is_active
      t.timestamps
    end

    create_table :task_types do |t|
      t.string :name
      t.string :icon
      t.boolean :comments_allowed
      t.boolean :is_active, default: true
      t.timestamps
    end

    create_table :related_tasks do |t|
      t.references :task
      t.integer :related_task_id
      t.timestamps
    end

    create_table :tags do |t|
      t.references :task
      t.references :tag_type
      t.timestamps
    end

    create_table :tag_types do |t|
      t.string :name
      t.string :color
      t.boolean :is_active, default: true
      t.timestamps
    end

    create_table :users do |t|
      t.string :screen_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end

    create_table :sprints do |t|
      t.string :name
      t.string :slug
      t.date :starts_at
      t.date :ends_at
      t.references :project
      t.boolean :is_active
      t.timestamps
    end

  end

end