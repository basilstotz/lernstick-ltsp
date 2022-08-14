#!/bin/sh

echo "#!/bin/sh"
echo ""
echo "cat <<EOF | base64 -d | tar -x -z -f - -C /"

cd lernstick-ltsp-conf
tar -c -z -f - etc/ usr/ lib/ | base64

echo "EOF"
echo ""
echo "/usr/local/sbin/ltsp-setup"
echo ""
echo "exit 0"

