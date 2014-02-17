if [ "x${SERF_SELF_ROLE}" != "xlb" ]; then
    echo "Not an lb. Ignoring member join."
    exit 0
fi

while read line; do
    ROLE=`echo $line | awk '{print \$3 }'`
    if [ "x${ROLE}" != "xweb" ]; then
        continue
    fi

    echo $line | \
        awk '{ printf "    server %s %s check\n", $1, $2 }' >>/etc/haproxy/haproxy.cfg
done

service haproxy reload
