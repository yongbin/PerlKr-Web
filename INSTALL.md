설치
=====

Perl 의존 모듈
---------------

- Const::Fast
- Mojolicious
- Plack
- Plack::Middleware::Expires
- Starman


apache 설정
------------

5000번 포트를 perl.kr로 연결하기 위한 아파치
리버스 프록시 설정은 다음과 같습니다.

    LoadModule proxy_module          modules/mod_proxy.so
    LoadModule proxy_balancer_module modules/mod_proxy_balancer.so
    LoadModule proxy_http_module     modules/mod_proxy_http.so
    LoadModule proxy_connect_module  modules/mod_proxy_connect.so
    
    <IfModule mod_proxy.c>
    ProxyRequests Off
    <Proxy *>
        Order deny,allow
        Allow from all
    </Proxy>
    
    <VirtualHost *:80>
        ServerName       perl.kr
        ProxyPass        /     http://127.0.0.1:5000/
        ProxyPassReverse /     http://127.0.0.1:5000/
        ErrorLog         /var/log/apache2/perl.kr/error_log
        CustomLog        /var/log/apache2/perl.kr/access_log combined
    </VirtualHost>

또한 아파치는 모르는 확장자에 대해서는 `text/plain`으로
보내므로 캐싱을 위해 폰트 관련 타입을 추가로 설정 합니다.

    AddType application/vnd.bw-fontobject .eot
    AddType application/x-font-ttf        .ttf
    AddType application/x-woff            .woff
