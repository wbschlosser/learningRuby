#a Dict is just an array of buckets, which are an
# array of slots, which have key/value pairs in them
#
#The general pattern for this data struct is as follows
#1. convert a key to an integer using the hash_key function
#2. convert this hash to a bucket number using %
#3. get this bucket from aDict, and then traverse it to
# find the slot that contains the key we want
#######################################################
#use a hash when:
#1. you have to retrieve based on an ID; names, addresses, or anything
# that can be a key
#2. you don't need things in order. Hashes do not normally have a notion
# of order.
#3. you are going to be add/removing elements and their keys
# (if you have a non-numeric key, use a hash) otherwise, use an array
#######################################################
module Dict
	#makes Dict (initializer).
	#creates aDict and puts num_buckets inside of it
	#later aDict.length is used to find the number of buckets
	def Dict.new(num_buckets=256)
		aDict = []#an array, to be filled with other arrays
		(0...num_buckets).each do |i|
			aDict.push([])
		end

		return aDict
	end

	#Given a key, this will create a number and convert it to an
	#index for aDict's buckets
	#converts a string to a number, built in hash function
	def Dict.hash_key(aDict,key)
		#after I get a number for the key, the % and aDict.length function
		#are used to get a bucket where the key can go.
		#can be used to limit gaint numbers to a fixed set of smaller nums
		return key.hash % aDict.length
	end

	#given a key, find the bucket where it will go
	#uses hash_key to find the bucket the key could be in.
	#using % aDict.length in the hash function guarantees that
	#the bucket_id returned will fit into the aDict array.
	def Dict.get_bucket(aDict,key)
		bucket_id = Dict.hash_key(aDict,key)
		return aDict[bucket_id]
	end

	#returns the index, key, and value of a slot found in a bucket
	#uses get_bucket to get the bucket a key could be in, then rols
	#through the elemnts until it finds the key. It then returns
	#the (i, k, v) which is the index the key was found, the key, and the
	#value for that key.
	#this data struct takes keys, hashes, and modulus to them to find a
	#bucket, then searches that bucket to find them. This cuts the
	#amount of searching to a fraction of what it would be.
	def Dict.get_slot(aDict,key,default=nil)
		bucket = Dict.get_bucket(aDict,key)
		
		bucket.each_with_index do |kv,i|
			k, v = kv
			if key == k
				return i, k, v
			end
		end

		return -1, key, default
	end

	#gets the value in a bucket for the given key or the default
	#uses get_slot to get the (i, k, v) and then returns v only
	def Dict.get(aDict,key,default=nil)
		i, k, v = Dict.get_slot(aDict,key,default=default)
		return v
	end

	#sets the key to the vaue, replacing any existing value
	#to set a key/value pair gets the bucket and appends the new (k,v)
	#to it to be found later. This only allows for 1 key at a time though
	#checks first if the bucket exists, otherwise adds the (k,v) to
	#that bucket.
	#this is a tradeoff, faster on get but slower on set
	def Dict.set(aDict, key, value)
		bucket = Dict.get_bucket(aDict, key)
		i, k, v = Dict.get_slot(aDict, key)

		if i >= 0
			bucket[i] = [key, value]
		else
			bucket.push([key,value])
		end
	end

	#deletes the given key from the dict
	#gets the bucket and search for the key in it, delete the key from
	#the array. Since 'set' only gets 1 pair, when it's found here it
	#can be removed. Otherwise, delete would need to go through every
	#slot just in case it had a k/v pair that matched
	def Dict.delete(aDict,key)

		(0...bucket.length).each do |i|
			k, v = bucket[i]
			if key == k
				bucket.delete_at(i)
				break
			end
		end
	end
	
	#prints out what's in Dict
	#gets each bucket, then goes through each slot in the bucket
	def Dict.list(aDict)
		aDict.each do |bucket|
			if bucket
				bucket.each do |k,v|
					puts k, v
				end
			end
		end
	end
end
