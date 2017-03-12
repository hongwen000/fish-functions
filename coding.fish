function coding
    set days $argv[1]
    if not test $days
        set name (date +"%Y-%m-%d")
    else
        set name (date -d "$days day ago" +"%Y-%m-%d")
    end
	if ll /mnt/c/Users/lixin/Desktop/ACM-ICPC/ | grep $name
		cd /mnt/c/Users/lixin/Desktop/ACM-ICPC/$name
	else
		mkdir /mnt/c/Users/lixin/Desktop/ACM-ICPC/$name
		cd /mnt/c/Users/lixin/Desktop/ACM-ICPC/$name
	end
end
