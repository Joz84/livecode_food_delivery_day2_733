require_relative "router"
require_relative "app/repositories/meal_repository"
require_relative "app/repositories/customer_repository"
require_relative "app/repositories/employee_repository"

require_relative "app/controllers/meals_controller"
require_relative "app/controllers/customers_controller"
require_relative "app/controllers/sessions_controller"

customer_repository = CustomerRepository.new("data/customers.csv")
employee_repository = EmployeeRepository.new("data/employees.csv")

customers_controller = CustomersController.new(customer_repository)
meal_repository = MealRepository.new("data/meals.csv")
meals_controller = MealsController.new(meal_repository)
sessions_controller = SessionsController.new(employee_repository)

router = Router.new(sessions_controller, meals_controller, customers_controller)

router.run