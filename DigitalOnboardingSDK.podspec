Pod::Spec.new do |s|

s.name = "DigitalOnboardingSDK"
s.summary = "DigitalOnboarding lets your users to become a customer of DenizBank easily."
s.platform = :ios
s.ios.deployment_target = '13.0'
s.swift_version = "5.7"
s.requires_arc = true
s.version = "1.0.0"
s.license = { :type => "Apache License 2.0", :file => "LICENSE" }
s.author = { "Murat ADIGÜZEL" => "murat.adiguzel@intertech.com.tr" }
s.homepage = "https://github.com/madiguzel/DigitalOnboarding"
s.source = { :git => "https://github.com/madiguzel/DigitalOnboarding.git",
             :tag => "#{s.version}" }
s.vendored_framework = "Sources/DigitalOnboardingSDK.xcframework"
s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
s.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }

end
