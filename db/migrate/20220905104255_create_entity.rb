# frozen_string_literal: true

class CreateEntity < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
