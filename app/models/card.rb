# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  list_id     :bigint           not null
#
# Indexes
#
#  index_cards_on_list_id  (list_id)
#
# Foreign Keys
#
#  fk_rails_...  (list_id => lists.id)
#
class Card < ApplicationRecord
  belongs_to :list

  validates :name, :description, presence: true
end
