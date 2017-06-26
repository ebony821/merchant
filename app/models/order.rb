class Order < ApplicationRecord
  has_many :line_itmes, dependent: :destroy
  belongs_to :user

  validates :name, :address, :user_id, presence: true

  PATMENT_TYPES =["cash", "check", "paypal", "COD", "Debit", "Credit"]
  validates :pay_type, presence: true, inclusion: PATMENT_TYPES


  def add_line_items_from_cart(cart)
    cart.line_itmes.each do |item|
      item.cart_id = nil
      line_itmes << item
    end
  end
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
