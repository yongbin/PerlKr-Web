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

    <VirtualHost *:80>
        ServerName       perl.kr
        ProxyPass        /     http://127.0.0.1:5000/
        ProxyPassReverse /     http://127.0.0.1:5000/
        ErrorLog         /var/log/apache2/perl.kr/error_log
        CustomLog        /var/log/apache2/perl.kr/access_log combined
    </VirtualHost>
