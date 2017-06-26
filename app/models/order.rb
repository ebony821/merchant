class Order < ApplicationRecord
  has_many :line_itmes, dependent: :destroy
  belongs_to :user

  PATMENT_TYPES =["cash", "check", "paypal", "COD", "Debit", "Credit"]
end

# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :text
#  pay_type   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
