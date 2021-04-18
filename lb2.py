array = [1, 2, 3, 4, 5, 6, 7]
for i in array:
   if i & 0b00000010 == 2:
       array[i] = i >> 1
   else:
       pass

