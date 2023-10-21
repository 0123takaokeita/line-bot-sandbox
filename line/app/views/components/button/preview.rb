# frozen_string_literal: true

class Button::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    component "button", text: 'delete', path: '#', theme: :delete
  end

  def primary
    component "button", text: 'submit', path: '#'
  end
end
