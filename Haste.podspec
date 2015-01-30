Pod::Spec.new do |s|
  s.name         = "Haste"
  s.version      = "0.1"
  s.summary      = "NSTimer Extension for Swift"

  s.description  = <<-DESC
                   Everyone has made NSTimer categories for `NSTimer` in Objective-C. 
                   But who has done it in Swift? Well, probably lots of people, 
                   but the point is that it is not as straightforward as you might think. 
                   DESC

  s.homepage     = "https://github.com/ashfurrow/Haste"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Ash Furrow" => "ash@ashfurrow.com" }
  s.social_media_url   = "http://twitter.com/ashfurrow"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ashfurrow/Haste.git", :tag => s.version }
  s.source_files  = "NSTimer+Haste.swift"
  s.framework  = "Foundation"
  s.requires_arc = true
end
