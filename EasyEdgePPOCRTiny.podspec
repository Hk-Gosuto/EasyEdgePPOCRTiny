

Pod::Spec.new do |s|

  s.name         = "EasyEdgePPOCRTiny"
  s.version      = "0.0.3"
  s.summary      = "PP-OCR-tiny"
  s.description  = <<-DESC
                      PP-OCR-tiny是PP-OCRv3模型的量化版本，在稍微精度损失的条件下，模型压缩到6M，更适合端侧设备部署。
                   DESC
  s.homepage     = "https://github.com/Hk-Gosuto/EasyEdgePPOCRTiny"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "Gosuto"
  s.platform     = :ios, "12.0"
  s.source       = { :http => "https://github.com/Hk-Gosuto/EasyEdgePPOCRTiny/releases/download/v0.0.3/EasyEdgePPOCRTiny.zip"}

  s.vendored_libraries = "EasyEdgePPOCRTiny/LIB/lib/*.a"
  s.public_header_files = 'EasyEdgePPOCRTiny/LIB/include/*.h','EasyEdgePPOCRTiny/LIB/include/EasyDL/*.h','EasyEdgePPOCRTiny/LIB/include/paddlelite/*.h'
  # s.resources = 'EasyEdgePPOCRTiny/RES/easyedge/*.json'
end
