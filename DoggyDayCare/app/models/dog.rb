


class Dog < ApplicationRecord
    validates :name, presence: true
    validate :check_name_length

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "Name is too short"
        end
    end
end