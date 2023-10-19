# frozen_string_literal: true

require "test_helper"

class Link::ComponentTest < ActiveSupport::TestCase
  include ViewComponent::TestHelpers

  test 'test_renders' do
    component = build_component text: 'test', path: '/'

    render_inline(component)

    assert_selector 'a'
  end

  private

  def build_component(**options)
    Link::Component.new(**options)
  end
end
