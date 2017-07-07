class Replay < ApplicationRecord
  serialize :req
  serialize :res

  belongs_to :discussion
end
