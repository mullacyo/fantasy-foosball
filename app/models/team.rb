class Team < ApplicationRecord
    belongs_to :player1, :foreign_key => 'user_id', :class_name => 'User', optional: true
    belongs_to :player2, :foreign_key => 'user_id', :class_name => 'User', optional: true
end
