class Room < ApplicationRecord

    belongs_to :user
    has_many :reservations
    has_one_attached :image

    validates :name, presence: true
    validates :address, presence: true
    validates :introduction, presence: true
    validates :fee, presence: true

    def Room.search_area(search_area)
      Room.where(['address LIKE ?', "%#{search_area}%"])
    end
    
    def Room.search_keyword(search_keyword)
      Room.where(['name LIKE ? OR introduction LIKE ? OR address LIKE ?',
      "%#{search_keyword}%", "%#{search_keyword}%", "%#{search_keyword}%"])
    end
    
end
