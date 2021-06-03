# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  cost        :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Book < ApplicationRecord
end
