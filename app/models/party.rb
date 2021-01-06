class Party < ApplicationRecord
    belongs_to :category

    def display_date
        self.date.strftime("%A, %B %d")
    end

    def private?
        self.private ? "Private" : "Public"
    end

    def category_name=(name)
        category = Category.find_or_create_by(name: name)
    end

    def category_name
        self.category.try(:name)
    end
end
