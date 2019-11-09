#!/bin/bash

cat > $HOME/suteste <<EOF
if [ "SOURCEID" != "0" ]; then
echo "Deve executar o comando como super usuario!"
exit 0
fi
EOF
sed -i "s/SOURCEID/\$\(id -u\)/g" $HOME/suteste
