# frozen_string_literal: true

class Card::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # Primary button
  # ---------------
  # This is the button style you should use for most things.
  #
  # @label Primary
  def default
    component 'card', title: 'title', body: 'body' 
  end

  def secondary
    component 'card', title: 'title', body: 'body2'
  end
end
