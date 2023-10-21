class ApplicationViewComponentPreview < ViewComponentContrib::Preview::Base
  self.abstract_class = true

  # レイアウトは継承される（ただしオーバーライドされる可能性あり）
  layout 'component_preview'
end
