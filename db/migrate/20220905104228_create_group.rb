# frozen_string_literal: true

class CreateGroup < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
