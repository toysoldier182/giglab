# == Schema Information
#
# Table name: todo_items
#
#  id         :bigint           not null, primary key
#  completed  :boolean          default("false")
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
