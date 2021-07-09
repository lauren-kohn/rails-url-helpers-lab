class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def to_status
    if self.active
      "active"
    else 
      "inactive"
    end
  end

  def change_status
    if self.active
      self.active = "false"
    else
      self.active = "true"
    end
  end

end