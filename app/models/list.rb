# == Schema Information
#
# Table name: lists
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :bigint           not null
#
# Indexes
#
#  index_lists_on_board_id  (board_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#
class List < ApplicationRecord
  belongs_to :board
  has_many :cards, dependent: :destroy
  validates :name, presence: true
end
