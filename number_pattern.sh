


#!/bin/bash



###############Print numbers divisibel by 3 and 5 and not divicibel by 15=========

##Number range is from 1 to 100


for i in {1..100}; do
if ([ 'expr $i % 3' == 0 ] || [ 'expr $i % 5' == 0 ]) && [ 'expr $i % 15' != 0 ];
then
	echo $i
fi;
done
