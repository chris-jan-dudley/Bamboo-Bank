# frozen_string_literal: true

User.create!(
  name: 'Chris',
  email: 'chris@bamboo.com',
  password: '123',
  password_confirmation: '123',
  balance: 100
)

User.create!(
  name: 'Tom',
  email: 'tom@bamboo.com',
  password: '456',
  password_confirmation: '456',
  balance: 100
)
