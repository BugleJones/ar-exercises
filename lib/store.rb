class Store < ActiveRecord::Base
    has_many :employees, inverse_of: :store

    validates :name, length: { minimum: 3 }
    validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    
    validate :need_womens_or_mens_apparel
    before_destroy :ensure_has_no_employees

    private
    def need_womens_or_mens_apparel
        if !womens_apparel && !mens_apparel
        errors.add(:mens_apparel, "Need atleast mens or womens apparel")
        errors.add(:womens_apparel, "Need atleast mens or womens apparel")
        end
    end

    def ensure_has_no_employees
        if self.employees.any?
          errors[:base] << "cannot delete store that has employees"
          return false
        end
      end

end
