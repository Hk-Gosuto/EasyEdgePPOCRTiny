

Pod::Spec.new do |s|

  s.name         = "EasyEdgePPOCRTiny"
  s.version      = "0.0.1"
  s.summary      = "PP-OCR-tiny"
  s.description  = <<-DESC
                      PP-OCR-tiny是PP-OCRv3模型的量化版本，在稍微精度损失的条件下，模型压缩到6M，更适合端侧设备部署。
                   DESC
  s.homepage     = "https://github.com/Hk-Gosuto/EasyEdgePPOCRTiny"
  s.license      = "BSD"
  s.author       = "Gosuto"
  s.platform     = :ios, "9.0"
  s.source       = { :http => "https://github.com/Hk-Gosuto/EasyEdgePPOCRTiny/archive/refs/tags/v0.0.1.zip"}

  s.vendored_libraries = "EasyEdgePPOCRTiny/LIB/lib/*.a"
  s.public_header_files = 'EasyEdgePPOCRTiny/LIB/include/*.h','EasyEdgePPOCRTiny/LIB/include/EasyDL/*.h','EasyEdgePPOCRTiny/LIB/include/paddlelite/*.h'
  s.resources = 'EasyEdgePPOCRTiny/RES/easyedge/*.json'
end
