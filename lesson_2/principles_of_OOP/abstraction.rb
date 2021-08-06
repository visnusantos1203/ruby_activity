class NetIncomeCalculator ## hides complexities of methods. 
  def initialize(gross_sales, cost_of_goods, rent, utils, salaries)
    @gross_sales = gross_sales
    @cost_of_goods = cost_of_goods
    @rent = rent
    @utils = utils
    @salaries = salaries   
  end

  def net_income
    net_sales - total_expenses
  end

  def net_sales
    @gross_sales - @cost_of_goods
  end

  def total_expenses
    @rent + @utils + @salaries
  end
end

income_statement = NetIncomeCalculator.new(100000, 20000, 10000, 5000, 30000)
puts income_statement.net_income