# Jaziel Lopez <juan.jaziel@gmail.com>

if [ -z $1 ]; then
  echo "First parameter should be the absolute url without hostname"
  echo "Example: /memberships/pages/article" && exit;
fi

# works on debian based systems
TOKEN=`cat /dev/urandom | tr -dc A\-Za\-z0\-9 | head -c${1:-8}; echo;`

sudo echo "location = /s/$TOKEN {return 301 $1;}" > /etc/nginx/tinyurl/$TOKEN.conf

sudo service nginx reload
sudo service nginx restart
echo ""
echo "Generated TinyURL: /s/$TOKEN" && exit 0;
