class User < ActiveRecord::Base
  # shard by surrogate_key
  turntable :user_cluster, :id
  sequencer :user_seq
  has_one  :user_status
  has_many :cards_users
end
