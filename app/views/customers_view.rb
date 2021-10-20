require_relative "base_view.rb"

class CustomersView < BaseView

    def display_list(customers)
        customers.each do |customer|
            puts "#{customer.id} - #{customer.name} : #{customer.address}"
        end
    end

end