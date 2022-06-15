class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        if self.freebies.where(dev_id: item_name)
            return true
        else
            return false
        end
    end

    def give_away(dev, freebies)
        freebies.update(dev_id: dev) unless freebies.dev_id = self
    end



end
