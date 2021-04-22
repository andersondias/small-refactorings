require 'test/unit'
require_relative '../tax_over_price_calculator'

class TaxOverPriceCalculatorTest < Test::Unit::TestCase
  def test_price_less_1_when_it_is_less_than_tax
    calculator = TaxOverPriceCalculator.new price: 10, tax: 15
    assert_equal 9, calculator.calculate
  end

  def test_returns_zero_when_price_is_less_than_1
    calculator = TaxOverPriceCalculator.new price: 0.5, tax: 15
    assert_equal 0, calculator.calculate
  end

  def test_returns_tax_when_it_is_less_than_price
    calculator = TaxOverPriceCalculator.new price: 20, tax: 15
    assert_equal 15, calculator.calculate
  end

  def test_returns_price_less_1_when_it_is_equal_to_tax
    calculator = TaxOverPriceCalculator.new price: 15, tax: 15
    assert_equal 14, calculator.calculate
  end
end
