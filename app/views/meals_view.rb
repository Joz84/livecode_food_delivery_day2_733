require_relative "base_view.rb"

class MealsView < BaseView

    def display_list(meals)
        meals.each do |meal|
            puts "#{meal.id} - #{meal.name} : #{meal.price} €"
        end
    end

end