class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, uniqueness: true
    validates :alias, uniqueness: true, if: :alias_check

    def alias_check
        self.alias.present?
    end

    def name
        "#{self.first_name} #{self.last_name}"
    end

    def set_image
        self.img_url = "https://images.app.goo.gl/C8UjWkTRTczWKzd4A"
    end
end
