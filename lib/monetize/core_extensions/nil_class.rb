class NilClass
  def to_money(currency = Money.default_currency, options = {})
    Money.new(nil, currency, options)
  end
end
