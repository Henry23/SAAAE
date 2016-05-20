class Student < ActiveRecord::Base
  belongs_to :reservation

  def self.search(search)
    if search
      where(["account_number LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
