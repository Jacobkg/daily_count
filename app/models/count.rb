class Count < ActiveRecord::Base
  scope :today, lambda { where(["record_date = ?", Date.current]) }
end
