class Presentation < ActiveRecord::Base
  has_many :slides
  before_create :add_primary_uid
  before_save :add_primary_uid

private

  def add_primary_uid
    self.uid = Digest::MD5.hexdigest(UUIDTools::UUID.sha1_create(UUIDTools::UUID.timestamp_create, UUIDTools::UUID.timestamp_create).to_s).slice(0..6) if self.uid == nil
  end
end
