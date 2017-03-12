function newcpp --description "loop <count>"
    set number $argv[1]
    if not test $number
        set number 1
    end 
    while math "$number > 0" > /dev/null
	    for x in (seq 1000 1 2000)
	        if ll | grep $x.cpp > /dev/null
	            continue
	        else 
	            cp /mnt/c/Users/lixin/Desktop/ACM-ICPC/sample.cpp ./$x.cpp
	            break
	        end
	    end      
	    set number  (math $number -1)
    end
end
