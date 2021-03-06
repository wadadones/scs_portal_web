class RoomUsageValidator < ActiveModel::Validator
  def validate(record)
    if record.band == nil
      record.errors[:base] << "バンド名が入力されていません"
    end
    if record.room == nil
      record.errors[:base] << "部屋が選択されていません"
    end
    if record.date == nil
      record.errors[:base] << "日付を選択してください"
    end
    if record.period == nil
      record.errors[:base] << "時限を選択してください"
    end

  end
end

class RoomUsage < ApplicationRecord
  serialize :period
  validates_with RoomUsageValidator

end
