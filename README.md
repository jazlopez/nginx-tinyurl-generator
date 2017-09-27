# nginx-tinyurl-generator
Generate tiny url out of long URL using nginx

## Get started

* Create tinyurl directory and place it in your nginx installation.

```
# default installation nginx /etc/nginx

$ sudo mkdir /etc/nginx/tinyurl

```

* Edit nginx configuration file or default vhost to include tinyurl/*.conf (it should be added as part of server block)

```
# Editing /etc/nginx/sites-available/default
 
 
   server {
     server_name foo.bar
     listen	*:80;
     listen	[::]:80 ipv6only=on;
     
     # include tinyurl configuration files
     include tinyurl/*.conf;
     ....
}

```

* Save nginx configuration file

* Move tinyurl.sh to /usr/local/bin 

```

$ sudo chmod +x tinyurl.sh && sudo mv tinyurl.sh /usr/local/bin/tinyurl

```

* Generate your first URL: the only argument tinyurl requires is the absolute long URL without hostname.
  
  It must be run as sudo.
  
 ```
  
 # Example: 
  
 # Generate tinyurl for http://foo.bar/pages/page/post.php
  
 $ sudo tinyurl /pages/page/post.php
  
 # output
  
 /s/sEvMFMQB
 
  ```

* Test http://foo.bar/s/sEvMFMQB navigate to http://foo.bar/pages/page/post.php

### Contact

[Jaziel Lopez](mailto:juan.jaziel@gmail.com)

Software Developer

[jlopez.mx](https://jlopez.mx)
