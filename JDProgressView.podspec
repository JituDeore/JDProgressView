

Pod::Spec.new do |s|
  s.name             = 'JDProgressView'
  s.version          = '0.1.0'
  s.summary          = 'A short description of JDProgressView.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/JituDeore/JDProgressView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT'}
  s.author           = { 'JituDeore' => 'jitendra.deore@verse.in' }
  s.source           = { :git => 'https://github.com/JituDeore/JDProgressView.git'}
  # s.social_media_url = 'https://twitter.com/jitendradeore5'

  s.ios.deployment_target = '8.0'
  s.source_files = 'Source/*.swift'
end
