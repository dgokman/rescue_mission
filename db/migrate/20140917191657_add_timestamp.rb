class AddTimestamp < ActiveRecord::Migration
  def change
    add_timestamps :questions
  end
end
