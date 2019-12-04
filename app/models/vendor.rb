class Vendor < ApplicationRecord
  has_many :rates
  has_many :orders

  validates :name, :email, :release, :delivered_orders, :failed_orders, :deal, :discount, :sla, :penalty, :balance_payment, :actual_payment, presence: true
  validates :delivered_orders, :failed_orders, :deal, :discount, :sla, :penalty, :balance_payment, :actual_payment, format: { with: /\A[0-9]+\z/, message: "accepts digits only!" }
  validates_each :name, :release do |record, attr, value|
    record.errors.add(attr, 'must contain only letters!') if
        value =~ /[^\A[a-zA-Z]+\z]/
  end
end
