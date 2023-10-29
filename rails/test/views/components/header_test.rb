# frozen_string_literal: true

require "test_helper"

class Header::ComponentTest < ActiveSupport::TestCase
  include ViewComponent::TestHelpers

  def test_renders
    component = build_component(title: 'test')

    render_inline(component)

    assert_selector 'h1'
  end

  private

  def build_component(**options)
    Header::Component.new(**options)
  end
end
