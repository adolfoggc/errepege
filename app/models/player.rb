class Player < ApplicationRecord
  belongs_to :race
  belongs_to :dnd_class
  belongs_to :alignment
end
