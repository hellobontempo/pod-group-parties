class Party < ApplicationRecord
    belongs_to :category
    

    scope :order_by_budget, -> {order(budget: :desc)}

    scope :private_parties, -> {where(private: true)}


    # def self.order_by_budget
    #   return array of parties 
    #   ordered from most expensive to least expensive
    #   order(budget: :desc)
    # end


    def display_date
        self.date.strftime("%A, %B %d")
    end

    def private?
        self.private ? "Private" : "Public"
    end

    def category_name=(name)
        self.category = Category.find_or_create_by(name: name)
        
    end

    def category_name
        self.category.try(:name)
    end
end
