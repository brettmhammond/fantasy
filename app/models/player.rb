class Player < ActiveRecord::Base
    belongs_to :position
    belongs_to :team

    def name
        "#{first_name} #{last_name}"
    end
end
