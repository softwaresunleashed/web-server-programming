




<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Seam_2_3/examples/jpa/other-configurations/resources-websphere7/import.sql at master · fregaham/Seam_2_3 · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="fregaham/Seam_2_3" name="twitter:title" /><meta content="Seam_2_3 - Fork of the Seam 2.3 SVN repository" name="twitter:description" /><meta content="https://2.gravatar.com/avatar/30f321568fb5c0d0e3709229b94bd5b8?d=https%3A%2F%2Fidenticons.github.com%2Feb6634833c710b6a2600606b15d25aaf.png&amp;r=x&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://2.gravatar.com/avatar/30f321568fb5c0d0e3709229b94bd5b8?d=https%3A%2F%2Fidenticons.github.com%2Feb6634833c710b6a2600606b15d25aaf.png&amp;r=x&amp;s=400" property="og:image" /><meta content="fregaham/Seam_2_3" property="og:title" /><meta content="https://github.com/fregaham/Seam_2_3" property="og:url" /><meta content="Seam_2_3 - Fork of the Seam 2.3 SVN repository" property="og:description" />

    <meta name="hostname" content="github-fe133-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 2.1.0p0-github-tcmalloc (87d8860372) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="7AA03384:3E2B:5B0237:52FF441F" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="h0mSTi8T4au8yH4CaMJQnANtyiwUwNW60ntNdzHrqQM=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-69e84abef39557ba0b764ea2d04cc3042e995a56.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-625722abd417791bbce318a0b3b68d52a3549015.css" media="all" rel="stylesheet" type="text/css" />
    
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-693e11922dcacc3a7408a911fe1647da4febd3bd.js" type="text/javascript"></script>
      <script async="async" defer="defer" src="https://github.global.ssl.fastly.net/assets/github-df91b5db3eea6cebc49f29b84a77174f8e21a8a9.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="ce1918afe8712ada383278efa0983628">

        <link data-pjax-transient rel='permalink' href='/fregaham/Seam_2_3/blob/ec08e523e6cb3a1ef38b4a6c4416f354bc754be1/examples/jpa/other-configurations/resources-websphere7/import.sql'>

  <meta name="description" content="Seam_2_3 - Fork of the Seam 2.3 SVN repository" />

  <meta content="249675" name="octolytics-dimension-user_id" /><meta content="fregaham" name="octolytics-dimension-user_login" /><meta content="3892532" name="octolytics-dimension-repository_id" /><meta content="fregaham/Seam_2_3" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="3892532" name="octolytics-dimension-repository_network_root_id" /><meta content="fregaham/Seam_2_3" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/fregaham/Seam_2_3/commits/master.atom" rel="alternate" title="Recent Commits to Seam_2_3:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production windows vis-public page-blob tipsy-tooltips">
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Ffregaham%2FSeam_2_3%2Fblob%2Fmaster%2Fexamples%2Fjpa%2Fother-configurations%2Fresources-websphere7%2Fimport.sql">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="fregaham/Seam_2_3"
      data-branch="master"
      data-sha="649af7c0698071c8800cd6239fcf297bc61a5301"
  >

    <input type="hidden" name="nwo" value="fregaham/Seam_2_3" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2Ffregaham%2FSeam_2_3"
    class="minibutton with-count js-toggler-target star-button tooltipped upwards"
    aria-label="You must be signed in to use this feature" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/fregaham/Seam_2_3/stargazers">
      2
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Ffregaham%2FSeam_2_3"
        class="minibutton with-count js-toggler-target fork-button tooltipped upwards"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/fregaham/Seam_2_3/network" class="social-count">
        2
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/fregaham" class="url fn" itemprop="url" rel="author"><span itemprop="title">fregaham</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/fregaham/Seam_2_3" class="js-current-repository js-repo-home-link">Seam_2_3</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      

      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" aria-label="Code">
        <a href="/fregaham/Seam_2_3" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /fregaham/Seam_2_3">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" aria-label="Issues">
          <a href="/fregaham/Seam_2_3/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /fregaham/Seam_2_3/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" aria-label="Pull Requests">
        <a href="/fregaham/Seam_2_3/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /fregaham/Seam_2_3/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" aria-label="Pulse">
        <a href="/fregaham/Seam_2_3/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /fregaham/Seam_2_3/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" aria-label="Graphs">
        <a href="/fregaham/Seam_2_3/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /fregaham/Seam_2_3/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" aria-label="Network">
        <a href="/fregaham/Seam_2_3/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /fregaham/Seam_2_3/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/fregaham/Seam_2_3.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/fregaham/Seam_2_3.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/fregaham/Seam_2_3" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/fregaham/Seam_2_3" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/fregaham/Seam_2_3/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:7e51e1df3d63d8cb7ef810f3e90ce93a -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/fregaham/Seam_2_3/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/fregaham/Seam_2_3/blob/examples/examples/jpa/other-configurations/resources-websphere7/import.sql"
                 data-name="examples"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="examples">examples</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/fregaham/Seam_2_3/blob/master/examples/jpa/other-configurations/resources-websphere7/import.sql"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/fregaham/Seam_2_3/blob/remoting-examples/examples/jpa/other-configurations/resources-websphere7/import.sql"
                 data-name="remoting-examples"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="remoting-examples">remoting-examples</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/fregaham/Seam_2_3" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Seam_2_3</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/fregaham/Seam_2_3/tree/master/examples" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">examples</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/fregaham/Seam_2_3/tree/master/examples/jpa" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">jpa</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/fregaham/Seam_2_3/tree/master/examples/jpa/other-configurations" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">other-configurations</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/fregaham/Seam_2_3/tree/master/examples/jpa/other-configurations/resources-websphere7" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">resources-websphere7</span></a></span><span class="separator"> / </span><strong class="final-path">import.sql</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="examples/jpa/other-configurations/resources-websphere7/import.sql" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/fregaham/Seam_2_3/contributors/master/examples/jpa/other-configurations/resources-websphere7/import.sql">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>23 lines (22 sloc)</span>
          <span class="meta-divider"></span>
        <span>3.37 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards"
               href="http://windows.github.com" aria-label="Open this file in GitHub for Windows">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 aria-label="You must be signed in to make or propose changes">Edit</a>
          <a href="/fregaham/Seam_2_3/raw/master/examples/jpa/other-configurations/resources-websphere7/import.sql" class="button minibutton " id="raw-url">Raw</a>
            <a href="/fregaham/Seam_2_3/blame/master/examples/jpa/other-configurations/resources-websphere7/import.sql" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/fregaham/Seam_2_3/commits/master/examples/jpa/other-configurations/resources-websphere7/import.sql" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped leftwards" href="#"
             aria-label="You must be signed in to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-sql js-blob-data">
        <table class="file-code file-diff tab-size-8">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>

            </td>
            <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="k">insert</span> <span class="k">into</span> <span class="n">Customer</span> <span class="p">(</span><span class="n">username</span><span class="p">,</span> <span class="n">password</span><span class="p">,</span> <span class="n">name</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="s1">&#39;gavin&#39;</span><span class="p">,</span> <span class="s1">&#39;foobar&#39;</span><span class="p">,</span> <span class="s1">&#39;Gavin King&#39;</span><span class="p">)</span></div><div class='line' id='LC2'><span class="k">insert</span> <span class="k">into</span> <span class="n">Customer</span> <span class="p">(</span><span class="n">username</span><span class="p">,</span> <span class="n">password</span><span class="p">,</span> <span class="n">name</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="s1">&#39;demo&#39;</span><span class="p">,</span> <span class="s1">&#39;demo&#39;</span><span class="p">,</span> <span class="s1">&#39;Demo User&#39;</span><span class="p">)</span></div><div class='line' id='LC3'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">120</span><span class="p">,</span> <span class="s1">&#39;Marriott Courtyard&#39;</span><span class="p">,</span> <span class="s1">&#39;Tower Place, Buckhead&#39;</span><span class="p">,</span> <span class="s1">&#39;Atlanta&#39;</span><span class="p">,</span> <span class="s1">&#39;GA&#39;</span><span class="p">,</span> <span class="s1">&#39;30305&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC4'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">180</span><span class="p">,</span> <span class="s1">&#39;Doubletree&#39;</span><span class="p">,</span> <span class="s1">&#39;Tower Place, Buckhead&#39;</span><span class="p">,</span> <span class="s1">&#39;Atlanta&#39;</span><span class="p">,</span> <span class="s1">&#39;GA&#39;</span><span class="p">,</span> <span class="s1">&#39;30305&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC5'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">450</span><span class="p">,</span> <span class="s1">&#39;W Hotel&#39;</span><span class="p">,</span> <span class="s1">&#39;Union Square, Manhattan&#39;</span><span class="p">,</span> <span class="s1">&#39;NY&#39;</span><span class="p">,</span> <span class="s1">&#39;NY&#39;</span><span class="p">,</span> <span class="s1">&#39;10011&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC6'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">450</span><span class="p">,</span> <span class="s1">&#39;W Hotel&#39;</span><span class="p">,</span> <span class="s1">&#39;Lexington Ave, Manhattan&#39;</span><span class="p">,</span> <span class="s1">&#39;NY&#39;</span><span class="p">,</span> <span class="s1">&#39;NY&#39;</span><span class="p">,</span> <span class="s1">&#39;10011&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC7'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">250</span><span class="p">,</span> <span class="s1">&#39;Hotel Rouge&#39;</span><span class="p">,</span> <span class="s1">&#39;1315 16th Street NW&#39;</span><span class="p">,</span> <span class="s1">&#39;Washington&#39;</span><span class="p">,</span> <span class="s1">&#39;DC&#39;</span><span class="p">,</span> <span class="s1">&#39;20036&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC8'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">300</span><span class="p">,</span> <span class="s1">&#39;70 Park Avenue Hotel&#39;</span><span class="p">,</span> <span class="s1">&#39;70 Park Avenue&#39;</span><span class="p">,</span> <span class="s1">&#39;NY&#39;</span><span class="p">,</span> <span class="s1">&#39;NY&#39;</span><span class="p">,</span> <span class="s1">&#39;10011&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC9'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">300</span><span class="p">,</span> <span class="s1">&#39;Conrad Miami&#39;</span><span class="p">,</span> <span class="s1">&#39;1395 Brickell Ave&#39;</span><span class="p">,</span> <span class="s1">&#39;Miami&#39;</span><span class="p">,</span> <span class="s1">&#39;FL&#39;</span><span class="p">,</span> <span class="s1">&#39;33131&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC10'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">80</span><span class="p">,</span> <span class="s1">&#39;Sea Horse Inn&#39;</span><span class="p">,</span> <span class="s1">&#39;2106 N Clairemont Ave&#39;</span><span class="p">,</span> <span class="s1">&#39;Eau Claire&#39;</span><span class="p">,</span> <span class="s1">&#39;WI&#39;</span><span class="p">,</span> <span class="s1">&#39;54703&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC11'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">90</span><span class="p">,</span> <span class="s1">&#39;Super 8 Eau Claire Campus Area&#39;</span><span class="p">,</span> <span class="s1">&#39;1151 W Macarthur Ave&#39;</span><span class="p">,</span> <span class="s1">&#39;Eau Claire&#39;</span><span class="p">,</span> <span class="s1">&#39;WI&#39;</span><span class="p">,</span> <span class="s1">&#39;54701&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC12'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">160</span><span class="p">,</span> <span class="s1">&#39;Marriot Downtown&#39;</span><span class="p">,</span> <span class="s1">&#39;55 Fourth Street&#39;</span><span class="p">,</span> <span class="s1">&#39;San Francisco&#39;</span><span class="p">,</span> <span class="s1">&#39;CA&#39;</span><span class="p">,</span> <span class="s1">&#39;94103&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC13'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">200</span><span class="p">,</span> <span class="s1">&#39;Hilton Diagonal Mar&#39;</span><span class="p">,</span> <span class="s1">&#39;Passeig del Taulat 262-264&#39;</span><span class="p">,</span> <span class="s1">&#39;Barcelona&#39;</span><span class="p">,</span> <span class="s1">&#39;Catalunya&#39;</span><span class="p">,</span> <span class="s1">&#39;08019&#39;</span><span class="p">,</span> <span class="s1">&#39;Spain&#39;</span><span class="p">)</span></div><div class='line' id='LC14'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">210</span><span class="p">,</span> <span class="s1">&#39;Hilton Tel Aviv&#39;</span><span class="p">,</span> <span class="s1">&#39;Independence Park&#39;</span><span class="p">,</span> <span class="s1">&#39;Tel Aviv&#39;</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">,</span> <span class="s1">&#39;63405&#39;</span><span class="p">,</span> <span class="s1">&#39;Israel&#39;</span><span class="p">)</span></div><div class='line' id='LC15'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">240</span><span class="p">,</span> <span class="s1">&#39;InterContinental Tokyo Bay&#39;</span><span class="p">,</span> <span class="s1">&#39;Takeshiba Pier&#39;</span><span class="p">,</span> <span class="s1">&#39;Tokyo&#39;</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">,</span> <span class="s1">&#39;105&#39;</span><span class="p">,</span> <span class="s1">&#39;Japan&#39;</span><span class="p">)</span></div><div class='line' id='LC16'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">130</span><span class="p">,</span> <span class="s1">&#39;Hotel Beaulac&#39;</span><span class="p">,</span> <span class="s1">&#39; Esplanade Leopold-Robert 2&#39;</span><span class="p">,</span> <span class="s1">&#39;Neuchatel&#39;</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">,</span> <span class="s1">&#39;2000&#39;</span><span class="p">,</span> <span class="s1">&#39;Switzerland&#39;</span><span class="p">)</span></div><div class='line' id='LC17'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">140</span><span class="p">,</span> <span class="s1">&#39;Conrad Treasury Place&#39;</span><span class="p">,</span> <span class="s1">&#39;William &amp; George Streets&#39;</span><span class="p">,</span> <span class="s1">&#39;Brisbane&#39;</span><span class="p">,</span> <span class="s1">&#39;QLD&#39;</span><span class="p">,</span> <span class="s1">&#39;4001&#39;</span><span class="p">,</span> <span class="s1">&#39;Australia&#39;</span><span class="p">)</span></div><div class='line' id='LC18'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">230</span><span class="p">,</span> <span class="s1">&#39;Ritz Carlton&#39;</span><span class="p">,</span> <span class="s1">&#39;1228 Sherbrooke St&#39;</span><span class="p">,</span> <span class="s1">&#39;West Montreal&#39;</span><span class="p">,</span> <span class="s1">&#39;Quebec&#39;</span><span class="p">,</span> <span class="s1">&#39;H3G1H6&#39;</span><span class="p">,</span> <span class="s1">&#39;Canada&#39;</span><span class="p">)</span></div><div class='line' id='LC19'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">460</span><span class="p">,</span> <span class="s1">&#39;Ritz Carlton&#39;</span><span class="p">,</span> <span class="s1">&#39;Peachtree Rd, Buckhead&#39;</span><span class="p">,</span> <span class="s1">&#39;Atlanta&#39;</span><span class="p">,</span> <span class="s1">&#39;GA&#39;</span><span class="p">,</span> <span class="s1">&#39;30326&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div><div class='line' id='LC20'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">220</span><span class="p">,</span> <span class="s1">&#39;Swissotel&#39;</span><span class="p">,</span> <span class="s1">&#39;68 Market Street&#39;</span><span class="p">,</span> <span class="s1">&#39;Sydney&#39;</span><span class="p">,</span> <span class="s1">&#39;NSW&#39;</span><span class="p">,</span> <span class="s1">&#39;2000&#39;</span><span class="p">,</span> <span class="s1">&#39;Australia&#39;</span><span class="p">)</span></div><div class='line' id='LC21'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">250</span><span class="p">,</span> <span class="s1">&#39;Meli White House&#39;</span><span class="p">,</span> <span class="s1">&#39;Albany Street&#39;</span><span class="p">,</span> <span class="s1">&#39;Regents Park London&#39;</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">,</span> <span class="s1">&#39;NW13UP&#39;</span><span class="p">,</span> <span class="s1">&#39;Great Britain&#39;</span><span class="p">)</span></div><div class='line' id='LC22'><span class="k">insert</span> <span class="k">into</span> <span class="n">Hotel</span> <span class="p">(</span><span class="n">price</span><span class="p">,</span> <span class="n">name</span><span class="p">,</span> <span class="n">address</span><span class="p">,</span> <span class="n">city</span><span class="p">,</span> <span class="k">state</span><span class="p">,</span> <span class="n">zip</span><span class="p">,</span> <span class="n">country</span><span class="p">)</span> <span class="k">values</span> <span class="p">(</span><span class="mi">210</span><span class="p">,</span> <span class="s1">&#39;Hotel Allegro&#39;</span><span class="p">,</span> <span class="s1">&#39;171 West Randolph Street&#39;</span><span class="p">,</span> <span class="s1">&#39;Chicago&#39;</span><span class="p">,</span> <span class="s1">&#39;IL&#39;</span><span class="p">,</span> <span class="s1">&#39;60601&#39;</span><span class="p">,</span> <span class="s1">&#39;USA&#39;</span><span class="p">)</span></div></pre></div></td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.06021s from github-fe133-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/fregaham/Seam_2_3/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

