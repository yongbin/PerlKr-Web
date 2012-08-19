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
% for my $link (@$links) {
  <div class="span3 galery">
    <div class="image-galery">
      <a class="group" rel="group1" href="<%= $link->{image} %>">
        <img src="<%= $link->{image} %>" />
      </a>
    </div>
    <div class="count-galery">
      <h3>
        <i class="icon-certificate"></i>
        <a href="<%= $link->{link} %>">
          <%= $link->{title} %>
        </a>
      </h3>
    </div>
    <div class="tags-galery">
      <p>
        <i class="icon-comment"></i>
        <%= $link->{desc} %>
      </p>
    </div>
  </div>
% }


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
      %= include 'layouts/nav'

      <div class="container">
        <div class="row">
          %= include 'layouts/header'
          <%= content %>
        </div> <!-- /row -->
      </div> <!-- /container -->

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
  <div class="nav-headers">
    <h3><%= $header_title %></h3>
    <p> <%= $header_desc %> </p>
  </div>
  <ul class="nav nav-tabs nav-stacked">
    % for my $link (@$header_links) {
      <li><a href="<%= $link->{url} %>"><i class="icon-ok"></i> <%= $link->{title} %> </a></li>
    % }
  </ul>
</div>


@@ layouts/footer.html.ep
<div class="container footer">
  <hr class="alt" />
  <div class="row">
    <div class="span6">&copy; <%= $copyright %>. All right reserved.</div>
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
