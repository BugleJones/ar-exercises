class Store < ActiveRecord::Base
    has_many :employees, inverse_of: :store

    validates :name, length: { minimum: 3 }
    validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    
    validate :need_womens_or_mens_apparel
    def need_womens_or_mens_apparel
        if !womens_apparel && !mens_apparel
        errors.add(:mens_apparel, "Need atleast mens or womens apparel")
        errors.add(:womens_apparel, "Need atleast mens or womens apparel")
        end
    end

end
