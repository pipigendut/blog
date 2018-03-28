class NoJsonUploader < CarrierWave::Uploader::Base
  def content_type_blacklist
    ['application/text', 'application/json']
  end
end
