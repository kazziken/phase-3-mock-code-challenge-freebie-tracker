class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs

    def give_freebies(dev, item_name, value)
        Freebie.create(dev: dev, item_name: item_name, value: value)
    end

    def self.oldest_company
        Company.order(:founding_year).first

    end


end
