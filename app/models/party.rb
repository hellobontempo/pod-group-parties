class Party < ApplicationRecord

    def display_date
        self.date.strftime("%A, %B %d")
    end

    def private?
        self.private ? "Private" : "Public"
    end
end
