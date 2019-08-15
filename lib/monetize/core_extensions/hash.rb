# encoding: utf-8

class Hash
  def to_money(currency = Money.default_currency, options = {})
    hash_currency = self[:currency].is_a?(Hash) ? self[:currency][:iso_code] : self[:currency]
    Money.new(self[:cents] || self[:fractional], hash_currency || currency, options[:infinite_precision])
  end
end
