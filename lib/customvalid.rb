class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.mens_apparel == nil && record.womens_apparel == nil
      record.errors[:mens_apparel] << "Men's apparal value is null"
      record.errors[:womens_apparel] << "Women's apparal value is null"
    elsif record.mens_apparel == false && record.womens_apparel == false
      record.errors[:mens_apparel] << 'Store must carry either mens apparel, womens or BOTH'
      record.errors[:womens_apparel] << 'Store must carry either mens apparel, womens or BOTH'
    end
  end
end