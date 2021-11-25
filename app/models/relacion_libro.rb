class RelacionLibro < ApplicationRecord
  belongs_to :libro
  belongs_to :biblioteca
end

