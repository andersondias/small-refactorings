class TaxOverPriceCalculator
  #
  # This code is a simplification and we will assume
  # tax is always greater than price.
  #
  def initialize(price: , tax: )
    @price, @tax = price, tax
  end

  #
  # Final version :)
  #
  def calculate
    [price_with_minimum_fee, @tax].min
  end

  private

  MINIMUM_FEE = 1

  def price_with_minimum_fee
    [@price - MINIMUM_FEE, 0].max
  end
end
