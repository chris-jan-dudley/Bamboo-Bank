class User < ApplicationRecord
  has_secure_password

  has_many :sent_transactions, class_name: 'Transaction', foreign_key: 'payer_id'
  has_many :received_transactions, class_name: 'Transaction', foreign_key: 'payee_id'

  after_initialize :set_balance

  private

  def set_balance
    self.balance ||= 100
  end
end
