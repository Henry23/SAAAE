class Student < ActiveRecord::Base

  def self.search(search)
    if search
      where(["account_number LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
