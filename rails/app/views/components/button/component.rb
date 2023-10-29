# frozen_string_literal: true

class Button::Component < ApplicationViewComponent
  option :text
  option :path
  option :theme, default: proc { :primary }
end
