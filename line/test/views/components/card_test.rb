# frozen_string_literal: true

require 'test_helper'

class Card::ComponentTest < ActiveSupport::TestCase
  include ViewComponent::TestHelpers

  test 'test_renders' do
    component = build_component title: 'test', body: 'test', item: 'test'

    render_inline(component)

    assert_selector 'div'
    assert_selector 'h4'
  end

  private

  def build_component(**options)
    Card::Component.new(**options)
  end
end
