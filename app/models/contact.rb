class Contact < ApplicationRecord

	enum situations: {
      not: 0,
      now: 1,
      clear: 2
}

  belongs_to :user
end
