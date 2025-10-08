find ./ -atime +30 -type f | sed -r 's/(.*\/)[^\/]+$/\1/g' | sort | uniq > /tmp/old
find ./ -atime -30 -type f | sed -r 's/(.*\/)[^\/]+$/\1/g' | sort | uniq | awk 'BEGIN{FS="/"; var="./"}{print var; for (i=2; i<NF; i++){ var=var$i"/";print var} var="./"}' | sort | uniq > /tmp/new
sort /tmp/old /tmp/new /tmp/new | uniq -u | awk '{if (FNR==1){print $0}} {if (substr($0,0,length(prev))==prev && FNR>2){$0 = prev; print $0;}; prev = $0 }' | uniq | sed -r 's/(.*)\/$/\1/g' | awk '{system("tar -czf "$0".tgz "$0"; rm -r "$0)}'
