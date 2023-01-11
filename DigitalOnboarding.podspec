Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "DigitalOnboarding"
s.summary = "DigitalOnboarding lets your users to become a customer of DenizBank easily."
s.requires_arc = true

# 2
s.version = "1.0.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Murat ADIGÜZEL" => "murat.adiguzel@intertech.com.tr" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/madiguzel/DigitalOnboarding"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/madiguzel/DigitalOnboarding.git",
             :tag => "#{s.version}" }

# 7
s.vendored_frameworks = "Sources/DigitalOnboardingSDK.xcframework"

# 8
s.swift_version = "5.7"

# 9
s.ios.deployment_target  = '13.0'

end
