[Unit]
Description=The NGINX HTTP and reverse proxy server
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
PIDFile=/home/vadzim_tarasiuk/nginx/logs/nginx.pid
ExecStartPre=/home/vadzim_tarasiuk/nginx/sbin/nginx -t
ExecStart=/home/vadzim_tarasiuk/nginx/sbin/nginx
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true

[Install]
WantedBy=multi-user.target
