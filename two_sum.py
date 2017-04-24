## two sum


def twosum(nums,target):
	hash = {}
	for i in range(len(nums)):
		print(i)
		if target - nums[i] in hash:
			return([hash[target-nums[i]],i])
		hash[nums[i]] = i
		print(hash)
	return([-1,-1])


numbers=[11, 15, 2, 7]
target=9

index = twosum(numbers,target)
print(index)