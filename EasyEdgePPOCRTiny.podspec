

Pod::Spec.new do |s|
  s.name         = "EasyEdgePPOCRTiny"
  s.version      = "0.0.4"
  s.summary      = "PP-OCR-tiny"
  s.description  = <<-DESC
                      PP-OCR-tiny是PP-OCRv3模型的量化版本，在稍微精度损失的条件下，模型压缩到6M，更适合端侧设备部署。
                   DESC
  s.homepage     = "https://github.com/Hk-Gosuto/EasyEdgePPOCRTiny"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Gosuto" => "gosuto@n3xt.chat" }
  s.platform     = :ios, "12.0"
  s.source       = { :http => "https://github.com/Hk-Gosuto/EasyEdgePPOCRTiny/releases/download/v0.0.4/EasyEdgePPOCRTiny.zip"}

  s.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64"
  }
  s.user_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64"
  }
  s.source_files = [
    "LIB/include/*.h",
    "LIB/include/EasyDL/*.h",
    "LIB/include/paddlelite/*.h"
  ]
  s.vendored_libraries = "LIB/lib/*.a"
  s.public_header_files = 'LIB/include/*.h','LIB/include/EasyDL/*.h','LIB/include/paddlelite/*.h'
  s.resources = 'EasyEdgeRess.bundle'
end
