class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.mens_apparel == false && record.ladies_apparel == false
      record.errors[:mens_apparel] << 'Store must carry either mens apparel, womens or BOTH'
    end
  end
end