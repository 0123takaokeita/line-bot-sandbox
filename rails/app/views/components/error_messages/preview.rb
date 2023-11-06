# frozen_string_literal: true

class ErrorMessages::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    post = Post.new
    post.valid?
    component 'error_messages', model: post
  end
end
