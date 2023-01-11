Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "DigitalOnboardingSDK"
s.summary = "DigitalOnboarding lets your users to become a customer of DenizBank easily."
s.requires_arc = true
s.version = "1.0.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Murat ADIGÜZEL" => "murat.adiguzel@intertech.com.tr" }
s.homepage = "https://github.com/madiguzel/DigitalOnboarding"
s.source = { :git => "https://github.com/madiguzel/DigitalOnboarding.git",
             :tag => "#{s.version}" }
s.vendored_frameworks = "Sources/DigitalOnboardingSDK.xcframework"
s.swift_version = "5.7"
s.ios.deployment_target = '13.0'
s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
s.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }

end
