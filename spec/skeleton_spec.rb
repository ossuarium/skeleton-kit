require 'kit'

describe Kit do

	KIT_CONFIG = "config.yml"

	before :all do
		@kit = Kit.new MY_KIT_CONFIG
	end

	# Write a spec for your kit here.

	after :all do
		@kit.delete_dbs
	end

end