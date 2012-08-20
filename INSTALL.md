설치
=====

Perl 의존 모듈
---------------

- Const::Fast
- Mojolicious
- Plack
- Starman


apache 설정
------------

우선은 test.perl.kr로 연결하고,
작업이 완료되면 perl.kr로 연결하면 될 것 같습니다.

    LoadModule proxy_module modules/mod_proxy.so
    LoadModule proxy_balancer_module modules/mod_proxy_balancer.so
    LoadModule proxy_http_module modules/mod_proxy_http.so
    LoadModule proxy_connect_module modules/mod_proxy_connect.so
    
    <IfModule mod_proxy.c>
    ProxyRequests Off
    <Proxy *>
        Order deny,allow
        Allow from all
    </Proxy>
    
    <VirtualHost *:80>
        ServerName       test.perl.kr
        ProxyPass        /     http://127.0.0.1:5000/
        ProxyPassReverse /     http://127.0.0.1:5000/
        ErrorLog         /var/log/apache2/perl.kr/error_log
        CustomLog        /var/log/apache2/perl.kr/access_log combined
    </VirtualHost>
