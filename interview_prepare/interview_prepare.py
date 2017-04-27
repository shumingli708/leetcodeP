# 1. 写一个function实现Counter的功能

def Counter(lst):
	re = {}
	for i in range(len(lst)):
		if lst[i] in re:
			re[lst[i]] += 1
		else:
			re[lst[i]] = 1
	return(re)

lst = [1,2,3,4,5,1,2,3,1,1,2,3]
re1 = Counter(lst)
print(re1)




# 2. 按顺序返回list里面 unique value

def P_unique_v(lst):
	re_dict = Counter(lst)
	unique_key = [s for s in re_dict.keys() if re_dict[s] ==1]
	def print_unique(lst,unique_key):
		if len(unique_key1q)==1:
			print(unique_key[0])
		else:
			if lst[0] in unique_key:	
				print(lst[0])
				unique_key.pop(lst.index(lst[0]))
				return(print_unique(lst[1:],unique_key))
			else:
				return(print_unique(lst[1:],unique_key))
	return(print_unique(lst,unique_key))

P_unique_v(lst)







# 3. 做flat list: giving [1,2,[3,4,[5,6]], 7] ==> [1,2,3,4,5,6,7]


lst2 = [1,2,[3,4,[5,6]], 7]
def flat(lst):
	if isinstance(lst,int):
		return([lst])
	else:
		result = []
		for ele in lst:
			result.append(flat(ele))
		return(result)

flat(lst2)

import math

# -- 做这个题的时候整个人是蒙的 直接被题目吓到， 然后就表现的非常弱智。
# 但其实就是简单的利用extend 和append的特性， recursive做这个就行了。. 1point3acres.com/bbs
# 4. 给你个list 还有一个百分数， eg. [1,2,3,4,5,6,7] 0.5 ==> 4
# 让返回在list 那个persentage position的element。
# 这个其实挺简单的，但是我因为还处于上一题的弱智表现的深深自责中，竟然没想到取ceil...
def per_pos(lst,per):
	len_lst = len(lst)
	pos = math.ceil(len_lst*per)
	return(pos)


re3 = per_pos([1,2,3,4,5,6,7],0.5)
print(re3)








