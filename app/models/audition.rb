class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    if (self.hired == false)
    self.update(hired: true)
    else
    nil
    end
  end

  def fire
    if (self.hired == true)
      self.update(hired: false)
    else
      nil
    end
  end


end