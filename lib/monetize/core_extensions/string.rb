# encoding: utf-8

class String
  def to_money(currency = nil, options = {})
    Monetize.parse!(self, currency, options)
  end

  def to_currency
    Money::Currency.new(self)
  end
end
