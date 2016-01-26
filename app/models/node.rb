class Node < ActiveRecord::Base

	def get_all
		all = $redis.hgetall 'pri_nodes'
	end

	def get_upd_time
		time = $redis.get 'pri_upd_time'
	end

	def push_cmd cmd
		$redis.lpush 'pri_cmd', cmd.to_s
	end
end
