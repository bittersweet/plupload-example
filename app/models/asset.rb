class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  mount_uploader :asset, AssetUploader
end
