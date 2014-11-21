

server {
            listen   80;
            server_name  www.dallasbirthdayclub.com;
            rewrite ^/(.*) http://dallasbirthdayclub.com/$1 permanent;
           }

server {

            listen   80;
            server_name dallasbirthdayclub.com;

            location / {
                        root   /home/chris/www/dallasbirthdayclub.com/src/;
                        index  index.html;
                        }

}
