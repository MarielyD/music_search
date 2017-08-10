module SearchableByName
  extend ActiveSupport::Concern

  module ClassMethods
    def search(term)
      where("name LIKE ?", "%#{term}%")
    end
  end
end
