Pod::Spec.new do |s|
  s.name             = 'AMRAdapterLiftoff'
  s.version          = '1.8.0.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Liftoff adapter for AMR SDK.'
  s.description      = 'AMR Liftoff adapter allows publishers to mediate banner, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-LIFTOFF',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_libraries = 'AMRAdapterLiftoff/Libs/libAMRAdapterLiftoff.a'
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'LiftoffAds', '1.8.0'
end
