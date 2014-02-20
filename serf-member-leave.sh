if [ "x${SERF_SELF_ROLE}" != "xlb" ]; then
    echo "Not an lb. Ignoring member leave"
    exit 0
fi

while read line; do
    NAME=$(echo $line | awk '{print $1 }')
    sed -i'' "/${NAME} /d" /etc/haproxy/haproxy.cfg
done

service haproxy reload
