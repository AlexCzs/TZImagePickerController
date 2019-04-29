
Pod::Spec.new do |spec|


  spec.name         = "NBImagePickerController"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of NBImagePickerController."
  spec.description  = <<-DESC
                    NBImagePickerController
                   DESC
  spec..platform    = :ios
  spec.ios.deployment_target = '9.0'
  spec.homepage     =  "http://git.ninebot.cn:8888/zhaoshen.chen/TZImagePickerController_Fork"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "alex" => "zhaoshen.chen@ninebot.com" }
  

  spec.source       = { :git =>  "http://git.ninebot.cn:8888/zhaoshen.chen/TZImagePickerController_Fork.git"}

  spec.source_files  = "TZImagePickerController/TZImagePickerController/*.{h,m}"

  spec.resources    = "TZImagePickerController/TZImagePickerController/*.{png,bundle}"
  spec.frameworks   = "Photos"

  spec.dependency 'NBFoundation'
  
end
