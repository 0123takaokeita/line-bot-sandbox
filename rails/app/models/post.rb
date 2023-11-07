class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :body
  end
end

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  published  :boolean
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
