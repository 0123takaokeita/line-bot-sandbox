module ApplicationHelper
  # componentのrenderのsyntax sugger
  # @param [String] name componentの名前
  # @param [Array] args componentのinitializeに渡す引数
  # @param [Hash] kwargs componentのinitializeに渡すキーワード引数
  # @param [Proc] block componentのbody
  def component(name, *args, **kwargs, &block)
    component = name.to_s.camelize.constantize::Component
    render(component.new(*args, **kwargs), &block)
  end
end
