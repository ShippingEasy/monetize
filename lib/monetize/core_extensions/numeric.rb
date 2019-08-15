# encoding: utf-8

class Numeric
  def to_money(currency = Money.default_currency, options = {})
    Monetize.from_numeric(self, currency, options)
  end
end
