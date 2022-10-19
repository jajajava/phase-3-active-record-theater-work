class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map{|d| d.actor}
    end

    def locations
        auditions.map{|d| d.location}
    end

    def lead
    if auditions.find_by(hired: true)
        auditions.find_by(hired: true)
    else
        "No actor has been hired for this role"
    end 
    end 
    def understudy
    if auditions.where(hired: true).second
        auditions.where(hired: true).second
    else
        "No actor has been hired for this role"
    end

    end


end