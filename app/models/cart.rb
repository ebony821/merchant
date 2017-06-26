class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def subtotal
    line_items.select("Sum(quantity * price) AS sum")[0].sum


  end
end


# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
