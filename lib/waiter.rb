class Waiter
    attr_accessor :name,:yrs_experience

    @@all = []

    def initialize(name,yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def new_meal(customer,total,tip)
        Meal.new(self,customer,total,tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def customers
        self.meals.map{|meal| meal.customer}
    end

    def best_tipper
        self.meals.max {|a,b| a.tip <=> b.tip}.customer
    end

    def most_frequent_customer
        self.customers.max_by {|customer| self.customers.count(customer)}
    end

    def worst_tip_meal
        self.meals.min_by {|meal| meal.tip}
    end

end