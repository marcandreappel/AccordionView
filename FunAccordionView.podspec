Pod::Spec.new do |spec|
  specplatform = :ios
  speciospecdeployment_target = '11.0'
  specname = "FunAccordionView"
  specsummary = "FunAccordionView provides a three level accordion view (forked of ThreeLevelAccordian)."
  specrequires_arc = true
  specversion = "1.0.0"
  speclicense = { :type => "MIT", :file => "LICENSE" }
  specauthor = { "Marc-André Appel" => "marc-andre@appel.fun" }
  spechomepage = "https://github.com/marcandreappel/FunAccordionView"
  specsource = { :git => "https://github.com/marcandreappel/FunAccordionView.git", :tag => "#{specversion}"}
  specframework = "UIKit"
  specsource_files = "FunAccordionView/**/*.{swift}"
  specresources = "FunAccordionView/**/*.{png,xib,pdf}"
end
