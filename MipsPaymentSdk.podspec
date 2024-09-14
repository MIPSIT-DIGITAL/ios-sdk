

Pod::Spec.new do |s|
  s.name             = 'MipsPaymentSdk'
  s.version          = '0.7.5' 
  s.summary          = 'official iOS SDK for MIPS paymemnt services'

  s.description      = <<-DESC
    official iOS SDK for MIPS paymemnt services
                       DESC

  s.homepage         = 'https://github.com/MIPSIT-DIGITAL/ios-sdk'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akshar@shyankdev.us' => 'akshar@shyankdev.us' }
  s.source           = { :git => 'https://github.com/MIPSIT-DIGITAL/ios-sdk', :tag => s.version.to_s }
  

  s.ios.deployment_target = '13.0'

  s.swift_version = '5.9'
  s.vendored_frameworks  = "MipsPaymentSdk.xcframework"

end
