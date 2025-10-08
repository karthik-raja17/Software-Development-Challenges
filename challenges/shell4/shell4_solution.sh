egrep -o "((Accepted)|(Failed)).*(([0-9][0-9]?[0-9]?\.){3}[0-9][0-9]?[0-9]?)" | sed -r 's/([a-zA-Z]*).*( ([0-9\.]+)$)/\3 \1/g' | sort | uniq -c | awk 'BEGIN{FS=" ";RS="\n";}{if($2 == prev_ip && prev_c < $1){print $2, $1, prev_c;}; prev_ip=$2; prev_c=$1}'

