# frozen_string_literal: true

require 'test_helper'

class Notice::ComponentTest < ActiveSupport::TestCase
  include ViewComponent::TestHelpers

  test 'test_render' do
    component = build_component text: 'test'

    render_inline(component)

    assert_selector 'div'
  end

  private

  def build_component(**options)
    Notice::Component.new(**options)
  end
end
