# == Schema Information
#
# Table name: submissions
#
#  id                :integer          not null, primary key
#  title             :string
#  price             :integer
#  stripe_payment_id :string
#  status            :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class SubmissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
