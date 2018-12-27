Pod::Spec.new do |spec|
  spec.platform = :ios
  spec.ios.deployment_target = '11.0'
  spec.name = "FunAccordionView"
  spec.summary = "FunAccordionView provides a three level accordion view (forked of ThreeLevelAccordian)."
  spec.requires_arc = true
  spec.version = "1.0.0"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = { "Marc-André Appel" => "marc-andre@appel.fun" }
  spec.homepage = "https://github.com/marcandreappel/FunAccordionView"
  spec.source = { :git => "https://github.com/marcandreappel/FunAccordionView.git", :tag => "#{spec.version}"}
  spec.framework = "UIKit"
  spec.source_files = "FunAccordionView/**/*.{swift}", "FunAccordionView/**/*.{h}"
  spec.resources = "FunAccordionView/**/*.{png,xib,pdf}"
end
