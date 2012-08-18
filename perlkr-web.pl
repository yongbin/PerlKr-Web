#!/usr/bin/env perl

use utf8;

use Mojolicious::Lite;

use Const::Fast;

my $config = plugin 'Config';
const my %DEFAULT_STASH => (
    %$config,
);

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => 'index';

app->defaults(%DEFAULT_STASH);
app->start;

__DATA__

@@ index.html.ep
% layout 'default';
% title 'perl.kr - Home of the Perl Korea';
<div class="container">
  <div class="row">
    <div class="span3">
      <div class="nav-headers">
        <h3>Find Your Favorite Korean Perl Site from Perl Korea</h3>

        <p>
          펄(Perl)은 텍스트 처리를 위해 Larry Wall이 만든 언어로
          시스템 관리, 웹프로그래밍, 네트워크 프로그래밍, GUI 개발 등
          다양한 분야에서 사용하고 있는 범용 프로그래밍 언어입니다.
        </p>

      </div>
      <ul class="nav nav-tabs nav-stacked">
        <li><a href="#"><i class="icon-ok"></i> Perl 설치하기 </a></li>
        <li><a href="#"><i class="icon-ok"></i> CPAN 사용하기 </a></li>
        <li><a href="#"><i class="icon-ok"></i> Perl 도서 </a></li>
        <li><a href="#"><i class="icon-ok"></i> 오프라인 모임 </a></li>
      </ul>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="group" rel="group1" href="/gallery/img/4_b.jpg"><img src="/gallery/img/4_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>,
        <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="group" rel="group1" href="/gallery/img/3_b.jpg"><img src="/gallery/img/3_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Sun</a>, <a href="#">Sunrise</a>,
        <a href="#">Dawn</a>, <a href="#">Morning</a>, <a href="#">Landscape</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="group" rel="group1" href="/gallery/img/1_b.jpg"><img src="/gallery/img/1_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Tree</a>, <a href="#">Landscape</a>,
        <a href="#">Forest</a>, <a href="#">Nature</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="images1" href="/gallery/img/5_b.jpg"><img src="/gallery/img/5_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Home</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="images2" href="/gallery/img/2_b.jpg"><img src="/gallery/img/2_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Sea</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="images3" href="/gallery/img/4_b.jpg"><img src="/gallery/img/4_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>,
        <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="images4" href="/gallery/img/3_b.jpg"><img src="/gallery/img/3_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Sun</a>, <a href="#">Sunrise</a>,
        <a href="#">Dawn</a>, <a href="#">Morning</a>, <a href="#">Landscape</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="group" rel="wheel_group" href="/gallery/img/1_b.jpg"><img src="/gallery/img/1_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Tree</a>, <a href="#">Landscape</a>,
        <a href="#">Forest</a>, <a href="#">Nature</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a rel="wheel_group" href="/gallery/img/5_b.jpg"><img src="/gallery/img/5_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Home</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a rel="wheel_group" href="/gallery/img/2_b.jpg"><img src="/gallery/img/2_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Sea</a></p>
      </div>
    </div>

    <div class="span3 galery">
      <div class="menu-galery">
        <ul>
          <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
          <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
          <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
          <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
        </ul>
      </div>
      <div class="image-galery"><a class="images3" href="/gallery/img/4_b.jpg"><img src="/gallery/img/4_b.jpg" /></a></div>
      <div class="count-galery">
        <ul>
          <li><i class="icon-comment"></i> 5</li>
          <li><i class="icon-download-alt"></i> 7</li>
          <li><i class="icon-star"></i> 2</li>
          <li><i class="icon-eye-open"></i> 20</li>
        </ul>
      </div>
      <div class="tags-galery">
        <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>,
        <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
      </div>
    </div>

  </div>
</div>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><%= title %></title>
    %= include 'layouts/head-load'
  </head>

  <body>
    <div id="wrapper" class="clearfix">
      %= include 'layouts/header'
      %= include 'layouts/nav'

      <div id="content">
        <div class="container">
          <%= content %>
        </div> <!-- /container -->
      </div> <!-- /content -->

      %= include 'layouts/footer'
    </div> <!-- /wrapper -->

    %= include 'layouts/body-load'
  </body>
</html>


@@ layouts/head-load.html.ep
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="/gallery/css/bootstrap.css" rel="stylesheet">
<link href="/gallery/css/style.css" rel="stylesheet">
<link href="/gallery/css/icon-style.css" rel="stylesheet">
<link href="/gallery/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/gallery/source/jquery.fancybox.css" rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="/gallery/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/gallery/img/favicon.ico" type="image/x-icon">


@@ layouts/body-load.html.ep
<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/gallery/js/jquery-1.7.2.min.js"></script>
<script src="/gallery/js/bootstrap.js"></script>
<script src="/gallery/js/image-gallery.js"></script>
<script src="/gallery/js/jquery.mousewheel-3.0.6.pack.js"></script>
<script src="/gallery/source/jquery.fancybox.js"></script>


@@ layouts/header.html.ep
<div id="header">
  <div class="container">
    <h1 id="title"> <a href="/"> </a> </h1>
  </div> <!-- /container -->
</div> <!-- /header -->


@@ layouts/footer.html.ep
<div class="container footer">
  <hr class="alt" />
  <div class="row">
    <div class="span6">&copy; <%= $copyright %>. All right reserved.</div>
    <div class="span6">
      <ul>
        <li><a href="#">Terms Of Service</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
    </div>
  </div>
</div>


@@ layouts/nav.html.ep
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="/"><img src="/gallery/img/logo.png" alt="<%= $project_name %>" /></a>
      <div class="nav-collapse">
        <ul class="nav">
          <li class="divider-vertical"></li>
          <li><a href="about.html">About</a></li>
          <li class="divider-vertical"></li>
        </ul>
        <ul class="nav pull-right">
          <li class="divider-vertical"></li>
          <li><a href="signin.html"> Twitter </a></li>
          <li class="divider-vertical"></li>
          <li><a href="signup.html"> Facebook </a></li>
          <li class="divider-vertical"></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>
