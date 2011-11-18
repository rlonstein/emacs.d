


<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>clojure-mode.el at master from technomancy/clojure-mode - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    
    

    <meta content="authenticity_token" name="csrf-param" />
<meta name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundles/github-ed04e8b8be3e88286d2fedb5ade5607df0599719.css" media="screen" rel="stylesheet" type="text/css" />
    

    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/jquery-0afaa9d8025004af7fc6f2a561837057d3f21298.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/github-b1872f46a080aa92c45573ca095de24a21d5f9ff.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/technomancy/clojure-mode/blob/4fbb25d7089c911c0f07897fa5c1445b196c6425/clojure-mode.el'>
    <META NAME="ROBOTS" CONTENT="NOINDEX, FOLLOW">

    <meta name="description" content="clojure-mode - Emacs support for the Clojure language" />
  <link href="https://github.com/technomancy/clojure-mode/commits/master.atom" rel="alternate" title="Recent Commits to clojure-mode:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob  env-production ">
    


    

    <div id="main">
      <div id="header" class="true">
          <a class="logo" href="https://github.com">
            <img alt="github" class="default svg" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6.svg?1315928456" />
            <img alt="github" class="default png" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6.png?1315928456" />
            <!--[if (gt IE 8)|!(IE)]><!-->
            <img alt="github" class="hover svg" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.svg?1315928456" />
            <img alt="github" class="hover png" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.png?1315928456" />
            <!--<![endif]-->
          </a>

        <div class="topsearch">
    <!--
      make sure to use fully qualified URLs here since this nav
      is used on error pages on other domains
    -->
    <ul class="nav logged_out">
        <li class="pricing"><a href="https://github.com/plans">Signup and Pricing</a></li>
        <li class="explore"><a href="https://github.com/explore">Explore GitHub</a></li>
      <li class="features"><a href="https://github.com/features">Features</a></li>
        <li class="blog"><a href="https://github.com/blog">Blog</a></li>
      <li class="login"><a href="https://github.com/login?return_to=%2Ftechnomancy%2Fclojure-mode%2Fblob%2Fmaster%2Fclojure-mode.el">Login</a></li>
    </ul>
</div>

      </div>

      
            <div class="site">
      <div class="pagehead repohead vis-public fork  instapaper_ignore readability-menu">


      <div class="title-actions-bar">
        <h1>
          <a href="/technomancy">technomancy</a> /
          <strong><a href="/technomancy/clojure-mode" class="js-current-repository">clojure-mode</a></strong>
            <span class="fork-flag">
              <span class="text">forked from <a href="/jochu/clojure-mode">jochu/clojure-mode</a></span>
            </span>
        </h1>
        



            <ul class="pagehead-actions">

        <li class="js-toggler-container watch-button-container ">
          <a href="/technomancy/clojure-mode/toggle_watch" class="minibutton btn-watch watch-button js-toggler-target" data-method="post" data-remote="true"><span><span class="icon"></span>Watch</span></a>
          <a href="/technomancy/clojure-mode/toggle_watch" class="minibutton btn-watch unwatch-button js-toggler-target" data-method="post" data-remote="true"><span><span class="icon"></span>Unwatch</span></a>
        </li>
            <li><a href="/technomancy/clojure-mode/fork" class="minibutton btn-fork fork-button" data-method="post"><span><span class="icon"></span>Fork</span></a></li>

      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers ">
            <a href="/technomancy/clojure-mode/watchers" title="Watchers" class="tooltipped downwards">
              140
            </a>
          </li>
          <li class="forks">
            <a href="/technomancy/clojure-mode/network" title="Forks" class="tooltipped downwards">
              54
            </a>
          </li>
        </ul>
      </li>
    </ul>

      </div>

        

  <ul class="tabs">
    <li><a href="/technomancy/clojure-mode" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/technomancy/clojure-mode/network" highlight="repo_networkrepo_fork_queue">Network</a>
    <li><a href="/technomancy/clojure-mode/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/technomancy/clojure-mode/issues" highlight="repo_issues">Issues <span class='counter'>7</span></a></li>

      <li><a href="/technomancy/clojure-mode/wiki" highlight="repo_wiki">Wiki <span class='counter'>1</span></a></li>

    <li><a href="/technomancy/clojure-mode/graphs" highlight="repo_graphsrepo_contributors">Stats &amp; Graphs</a></li>

  </ul>

  
<div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/technomancy/clojure-mode/tree-list/4fbb25d7089c911c0f07897fa5c1445b196c6425"
      data-blob-url-prefix="/technomancy/clojure-mode/blob/4fbb25d7089c911c0f07897fa5c1445b196c6425"
    >

  <div class="breadcrumb">
    <b><a href="/technomancy/clojure-mode">clojure-mode</a></b> /
    <input class="tree-finder-input" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/technomancy/clojure-mode/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever">Dismiss</a>
        <strong>Octotip:</strong> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser" cellpadding="0" cellspacing="0">
    <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form>
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        <span>Go</span>
      </button>
    </div>
  </form>
</div>


<div class="subnav-bar">

  <ul class="actions">
    
      <li class="switcher">

        <div class="context-menu-container js-menu-container">
          <span class="text">Current branch:</span>
          <a href="#"
             class="minibutton bigger switcher context-menu-button js-menu-target js-commitish-button btn-branch repo-tree"
             data-master-branch="master"
             data-ref="master">
            <span><span class="icon"></span>master</span>
          </a>

          <div class="context-pane commitish-context js-menu-content">
            <a href="javascript:;" class="close js-menu-close"></a>
            <div class="title">Switch Branches/Tags</div>
            <div class="body pane-selector commitish-selector js-filterable-commitishes">
              <div class="filterbar">
                <div class="placeholder-field js-placeholder-field">
                  <label class="placeholder" for="context-commitish-filter-field" data-placeholder-mode="sticky">Filter branches/tags</label>
                  <input type="text" id="context-commitish-filter-field" class="commitish-filter" />
                </div>

                <ul class="tabs">
                  <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                  <li><a href="#" data-filter="tags">Tags</a></li>
                </ul>
              </div>

                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/21-keywords-ending-in-octothorpe/clojure-mode.el" data-name="21-keywords-ending-in-octothorpe">21-keywords-ending-in-octothorpe</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/clojure-test-mode/clojure-mode.el" data-name="clojure-test-mode">clojure-test-mode</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/installer/clojure-mode.el" data-name="installer">installer</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/master/clojure-mode.el" data-name="master">master</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/no-inf/clojure-mode.el" data-name="no-inf">no-inf</a>
                  </h4>
                </div>

                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/test-1.2/clojure-mode.el" data-name="test-1.2">test-1.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/1.7/clojure-mode.el" data-name="1.7">1.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/1.5/clojure-mode.el" data-name="1.5">1.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/technomancy/clojure-mode/blob/1.4/clojure-mode.el" data-name="1.4">1.4</a>
                  </h4>
                </div>

              <div class="no-results" style="display:none">Nothing to show</div>
            </div>
          </div><!-- /.commitish-context-context -->
        </div>

      </li>
  </ul>

  <ul class="subnav">
    <li><a href="/technomancy/clojure-mode" class="selected" highlight="repo_source">Files</a></li>
    <li><a href="/technomancy/clojure-mode/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/technomancy/clojure-mode/branches" class="" highlight="repo_branches">Branches <span class="counter">5</span></a></li>
    <li><a href="/technomancy/clojure-mode/tags" class="" highlight="repo_tags">Tags <span class="counter">4</span></a></li>
    <li><a href="/technomancy/clojure-mode/downloads" class="" highlight="repo_downloads">Downloads <span class="counter">2</span></a></li>
  </ul>

</div>

  
  
  


        

      </div><!-- /.pagehead -->

      




  
  <p class="last-commit">Latest commit to the <strong>master</strong> branch</p>

<div class="commit commit-tease js-details-container">
  <p class="commit-title ">
      <a href="/technomancy/clojure-mode/commit/4fbb25d7089c911c0f07897fa5c1445b196c6425" class="message">Release 1.11.4.</a>
      
  </p>
  <div class="commit-meta">
    <a href="/technomancy/clojure-mode/commit/4fbb25d7089c911c0f07897fa5c1445b196c6425" class="sha-block">commit <span class="sha">4fbb25d708</span></a>

    <div class="authorship">
      <img class="gravatar" height="20" src="https://secure.gravatar.com/avatar/22788ec68b2aee512f8f4c5d8ae819ae?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" />
      <span class="author-name"><a href="/technomancy">technomancy</a></span>
      authored <time class="js-relative-date" datetime="2011-11-10T04:52:06-08:00" title="2011-11-10 04:52:06">November 10, 2011</time>

    </div>
  </div>
</div>


  <div id="slider">

    <div class="breadcrumb" data-path="clojure-mode.el/">
      <b><a href="/technomancy/clojure-mode/tree/4fbb25d7089c911c0f07897fa5c1445b196c6425" class="js-rewrite-sha">clojure-mode</a></b> / clojure-mode.el       <span style="display:none" id="clippy_711" class="clippy-text">clojure-mode.el</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://a248.e.akamai.net/assets.github.com/flash/clippy.swf?1315928456?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_711&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://a248.e.akamai.net/assets.github.com/flash/clippy.swf?1315928456?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_711&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="clojure-mode.el/" data-permalink-url="/technomancy/clojure-mode/blob/4fbb25d7089c911c0f07897fa5c1445b196c6425/clojure-mode.el" data-title="clojure-mode.el at master from technomancy/clojure-mode - GitHub" data-type="blob">
          <ul class="big-actions">
            <li><a class="file-edit-link minibutton js-rewrite-sha" href="/technomancy/clojure-mode/edit/4fbb25d7089c911c0f07897fa5c1445b196c6425/clojure-mode.el" data-method="post"><span>Edit this file</span></a></li>
          </ul>

        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://a248.e.akamai.net/assets.github.com/images/icons/txt.png?1315928456" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                  <span>964 lines (858 sloc)</span>
                <span>38.838 kb</span>
              </div>
              <ul class="actions">
                <li><a href="/technomancy/clojure-mode/raw/master/clojure-mode.el" id="raw-url">raw</a></li>
                  <li><a href="/technomancy/clojure-mode/blame/master/clojure-mode.el">blame</a></li>
                <li><a href="/technomancy/clojure-mode/commits/master/clojure-mode.el">history</a></li>
              </ul>
            </div>
              <div class="data type-emacs-lisp">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
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
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>
<span id="L539" rel="#L539">539</span>
<span id="L540" rel="#L540">540</span>
<span id="L541" rel="#L541">541</span>
<span id="L542" rel="#L542">542</span>
<span id="L543" rel="#L543">543</span>
<span id="L544" rel="#L544">544</span>
<span id="L545" rel="#L545">545</span>
<span id="L546" rel="#L546">546</span>
<span id="L547" rel="#L547">547</span>
<span id="L548" rel="#L548">548</span>
<span id="L549" rel="#L549">549</span>
<span id="L550" rel="#L550">550</span>
<span id="L551" rel="#L551">551</span>
<span id="L552" rel="#L552">552</span>
<span id="L553" rel="#L553">553</span>
<span id="L554" rel="#L554">554</span>
<span id="L555" rel="#L555">555</span>
<span id="L556" rel="#L556">556</span>
<span id="L557" rel="#L557">557</span>
<span id="L558" rel="#L558">558</span>
<span id="L559" rel="#L559">559</span>
<span id="L560" rel="#L560">560</span>
<span id="L561" rel="#L561">561</span>
<span id="L562" rel="#L562">562</span>
<span id="L563" rel="#L563">563</span>
<span id="L564" rel="#L564">564</span>
<span id="L565" rel="#L565">565</span>
<span id="L566" rel="#L566">566</span>
<span id="L567" rel="#L567">567</span>
<span id="L568" rel="#L568">568</span>
<span id="L569" rel="#L569">569</span>
<span id="L570" rel="#L570">570</span>
<span id="L571" rel="#L571">571</span>
<span id="L572" rel="#L572">572</span>
<span id="L573" rel="#L573">573</span>
<span id="L574" rel="#L574">574</span>
<span id="L575" rel="#L575">575</span>
<span id="L576" rel="#L576">576</span>
<span id="L577" rel="#L577">577</span>
<span id="L578" rel="#L578">578</span>
<span id="L579" rel="#L579">579</span>
<span id="L580" rel="#L580">580</span>
<span id="L581" rel="#L581">581</span>
<span id="L582" rel="#L582">582</span>
<span id="L583" rel="#L583">583</span>
<span id="L584" rel="#L584">584</span>
<span id="L585" rel="#L585">585</span>
<span id="L586" rel="#L586">586</span>
<span id="L587" rel="#L587">587</span>
<span id="L588" rel="#L588">588</span>
<span id="L589" rel="#L589">589</span>
<span id="L590" rel="#L590">590</span>
<span id="L591" rel="#L591">591</span>
<span id="L592" rel="#L592">592</span>
<span id="L593" rel="#L593">593</span>
<span id="L594" rel="#L594">594</span>
<span id="L595" rel="#L595">595</span>
<span id="L596" rel="#L596">596</span>
<span id="L597" rel="#L597">597</span>
<span id="L598" rel="#L598">598</span>
<span id="L599" rel="#L599">599</span>
<span id="L600" rel="#L600">600</span>
<span id="L601" rel="#L601">601</span>
<span id="L602" rel="#L602">602</span>
<span id="L603" rel="#L603">603</span>
<span id="L604" rel="#L604">604</span>
<span id="L605" rel="#L605">605</span>
<span id="L606" rel="#L606">606</span>
<span id="L607" rel="#L607">607</span>
<span id="L608" rel="#L608">608</span>
<span id="L609" rel="#L609">609</span>
<span id="L610" rel="#L610">610</span>
<span id="L611" rel="#L611">611</span>
<span id="L612" rel="#L612">612</span>
<span id="L613" rel="#L613">613</span>
<span id="L614" rel="#L614">614</span>
<span id="L615" rel="#L615">615</span>
<span id="L616" rel="#L616">616</span>
<span id="L617" rel="#L617">617</span>
<span id="L618" rel="#L618">618</span>
<span id="L619" rel="#L619">619</span>
<span id="L620" rel="#L620">620</span>
<span id="L621" rel="#L621">621</span>
<span id="L622" rel="#L622">622</span>
<span id="L623" rel="#L623">623</span>
<span id="L624" rel="#L624">624</span>
<span id="L625" rel="#L625">625</span>
<span id="L626" rel="#L626">626</span>
<span id="L627" rel="#L627">627</span>
<span id="L628" rel="#L628">628</span>
<span id="L629" rel="#L629">629</span>
<span id="L630" rel="#L630">630</span>
<span id="L631" rel="#L631">631</span>
<span id="L632" rel="#L632">632</span>
<span id="L633" rel="#L633">633</span>
<span id="L634" rel="#L634">634</span>
<span id="L635" rel="#L635">635</span>
<span id="L636" rel="#L636">636</span>
<span id="L637" rel="#L637">637</span>
<span id="L638" rel="#L638">638</span>
<span id="L639" rel="#L639">639</span>
<span id="L640" rel="#L640">640</span>
<span id="L641" rel="#L641">641</span>
<span id="L642" rel="#L642">642</span>
<span id="L643" rel="#L643">643</span>
<span id="L644" rel="#L644">644</span>
<span id="L645" rel="#L645">645</span>
<span id="L646" rel="#L646">646</span>
<span id="L647" rel="#L647">647</span>
<span id="L648" rel="#L648">648</span>
<span id="L649" rel="#L649">649</span>
<span id="L650" rel="#L650">650</span>
<span id="L651" rel="#L651">651</span>
<span id="L652" rel="#L652">652</span>
<span id="L653" rel="#L653">653</span>
<span id="L654" rel="#L654">654</span>
<span id="L655" rel="#L655">655</span>
<span id="L656" rel="#L656">656</span>
<span id="L657" rel="#L657">657</span>
<span id="L658" rel="#L658">658</span>
<span id="L659" rel="#L659">659</span>
<span id="L660" rel="#L660">660</span>
<span id="L661" rel="#L661">661</span>
<span id="L662" rel="#L662">662</span>
<span id="L663" rel="#L663">663</span>
<span id="L664" rel="#L664">664</span>
<span id="L665" rel="#L665">665</span>
<span id="L666" rel="#L666">666</span>
<span id="L667" rel="#L667">667</span>
<span id="L668" rel="#L668">668</span>
<span id="L669" rel="#L669">669</span>
<span id="L670" rel="#L670">670</span>
<span id="L671" rel="#L671">671</span>
<span id="L672" rel="#L672">672</span>
<span id="L673" rel="#L673">673</span>
<span id="L674" rel="#L674">674</span>
<span id="L675" rel="#L675">675</span>
<span id="L676" rel="#L676">676</span>
<span id="L677" rel="#L677">677</span>
<span id="L678" rel="#L678">678</span>
<span id="L679" rel="#L679">679</span>
<span id="L680" rel="#L680">680</span>
<span id="L681" rel="#L681">681</span>
<span id="L682" rel="#L682">682</span>
<span id="L683" rel="#L683">683</span>
<span id="L684" rel="#L684">684</span>
<span id="L685" rel="#L685">685</span>
<span id="L686" rel="#L686">686</span>
<span id="L687" rel="#L687">687</span>
<span id="L688" rel="#L688">688</span>
<span id="L689" rel="#L689">689</span>
<span id="L690" rel="#L690">690</span>
<span id="L691" rel="#L691">691</span>
<span id="L692" rel="#L692">692</span>
<span id="L693" rel="#L693">693</span>
<span id="L694" rel="#L694">694</span>
<span id="L695" rel="#L695">695</span>
<span id="L696" rel="#L696">696</span>
<span id="L697" rel="#L697">697</span>
<span id="L698" rel="#L698">698</span>
<span id="L699" rel="#L699">699</span>
<span id="L700" rel="#L700">700</span>
<span id="L701" rel="#L701">701</span>
<span id="L702" rel="#L702">702</span>
<span id="L703" rel="#L703">703</span>
<span id="L704" rel="#L704">704</span>
<span id="L705" rel="#L705">705</span>
<span id="L706" rel="#L706">706</span>
<span id="L707" rel="#L707">707</span>
<span id="L708" rel="#L708">708</span>
<span id="L709" rel="#L709">709</span>
<span id="L710" rel="#L710">710</span>
<span id="L711" rel="#L711">711</span>
<span id="L712" rel="#L712">712</span>
<span id="L713" rel="#L713">713</span>
<span id="L714" rel="#L714">714</span>
<span id="L715" rel="#L715">715</span>
<span id="L716" rel="#L716">716</span>
<span id="L717" rel="#L717">717</span>
<span id="L718" rel="#L718">718</span>
<span id="L719" rel="#L719">719</span>
<span id="L720" rel="#L720">720</span>
<span id="L721" rel="#L721">721</span>
<span id="L722" rel="#L722">722</span>
<span id="L723" rel="#L723">723</span>
<span id="L724" rel="#L724">724</span>
<span id="L725" rel="#L725">725</span>
<span id="L726" rel="#L726">726</span>
<span id="L727" rel="#L727">727</span>
<span id="L728" rel="#L728">728</span>
<span id="L729" rel="#L729">729</span>
<span id="L730" rel="#L730">730</span>
<span id="L731" rel="#L731">731</span>
<span id="L732" rel="#L732">732</span>
<span id="L733" rel="#L733">733</span>
<span id="L734" rel="#L734">734</span>
<span id="L735" rel="#L735">735</span>
<span id="L736" rel="#L736">736</span>
<span id="L737" rel="#L737">737</span>
<span id="L738" rel="#L738">738</span>
<span id="L739" rel="#L739">739</span>
<span id="L740" rel="#L740">740</span>
<span id="L741" rel="#L741">741</span>
<span id="L742" rel="#L742">742</span>
<span id="L743" rel="#L743">743</span>
<span id="L744" rel="#L744">744</span>
<span id="L745" rel="#L745">745</span>
<span id="L746" rel="#L746">746</span>
<span id="L747" rel="#L747">747</span>
<span id="L748" rel="#L748">748</span>
<span id="L749" rel="#L749">749</span>
<span id="L750" rel="#L750">750</span>
<span id="L751" rel="#L751">751</span>
<span id="L752" rel="#L752">752</span>
<span id="L753" rel="#L753">753</span>
<span id="L754" rel="#L754">754</span>
<span id="L755" rel="#L755">755</span>
<span id="L756" rel="#L756">756</span>
<span id="L757" rel="#L757">757</span>
<span id="L758" rel="#L758">758</span>
<span id="L759" rel="#L759">759</span>
<span id="L760" rel="#L760">760</span>
<span id="L761" rel="#L761">761</span>
<span id="L762" rel="#L762">762</span>
<span id="L763" rel="#L763">763</span>
<span id="L764" rel="#L764">764</span>
<span id="L765" rel="#L765">765</span>
<span id="L766" rel="#L766">766</span>
<span id="L767" rel="#L767">767</span>
<span id="L768" rel="#L768">768</span>
<span id="L769" rel="#L769">769</span>
<span id="L770" rel="#L770">770</span>
<span id="L771" rel="#L771">771</span>
<span id="L772" rel="#L772">772</span>
<span id="L773" rel="#L773">773</span>
<span id="L774" rel="#L774">774</span>
<span id="L775" rel="#L775">775</span>
<span id="L776" rel="#L776">776</span>
<span id="L777" rel="#L777">777</span>
<span id="L778" rel="#L778">778</span>
<span id="L779" rel="#L779">779</span>
<span id="L780" rel="#L780">780</span>
<span id="L781" rel="#L781">781</span>
<span id="L782" rel="#L782">782</span>
<span id="L783" rel="#L783">783</span>
<span id="L784" rel="#L784">784</span>
<span id="L785" rel="#L785">785</span>
<span id="L786" rel="#L786">786</span>
<span id="L787" rel="#L787">787</span>
<span id="L788" rel="#L788">788</span>
<span id="L789" rel="#L789">789</span>
<span id="L790" rel="#L790">790</span>
<span id="L791" rel="#L791">791</span>
<span id="L792" rel="#L792">792</span>
<span id="L793" rel="#L793">793</span>
<span id="L794" rel="#L794">794</span>
<span id="L795" rel="#L795">795</span>
<span id="L796" rel="#L796">796</span>
<span id="L797" rel="#L797">797</span>
<span id="L798" rel="#L798">798</span>
<span id="L799" rel="#L799">799</span>
<span id="L800" rel="#L800">800</span>
<span id="L801" rel="#L801">801</span>
<span id="L802" rel="#L802">802</span>
<span id="L803" rel="#L803">803</span>
<span id="L804" rel="#L804">804</span>
<span id="L805" rel="#L805">805</span>
<span id="L806" rel="#L806">806</span>
<span id="L807" rel="#L807">807</span>
<span id="L808" rel="#L808">808</span>
<span id="L809" rel="#L809">809</span>
<span id="L810" rel="#L810">810</span>
<span id="L811" rel="#L811">811</span>
<span id="L812" rel="#L812">812</span>
<span id="L813" rel="#L813">813</span>
<span id="L814" rel="#L814">814</span>
<span id="L815" rel="#L815">815</span>
<span id="L816" rel="#L816">816</span>
<span id="L817" rel="#L817">817</span>
<span id="L818" rel="#L818">818</span>
<span id="L819" rel="#L819">819</span>
<span id="L820" rel="#L820">820</span>
<span id="L821" rel="#L821">821</span>
<span id="L822" rel="#L822">822</span>
<span id="L823" rel="#L823">823</span>
<span id="L824" rel="#L824">824</span>
<span id="L825" rel="#L825">825</span>
<span id="L826" rel="#L826">826</span>
<span id="L827" rel="#L827">827</span>
<span id="L828" rel="#L828">828</span>
<span id="L829" rel="#L829">829</span>
<span id="L830" rel="#L830">830</span>
<span id="L831" rel="#L831">831</span>
<span id="L832" rel="#L832">832</span>
<span id="L833" rel="#L833">833</span>
<span id="L834" rel="#L834">834</span>
<span id="L835" rel="#L835">835</span>
<span id="L836" rel="#L836">836</span>
<span id="L837" rel="#L837">837</span>
<span id="L838" rel="#L838">838</span>
<span id="L839" rel="#L839">839</span>
<span id="L840" rel="#L840">840</span>
<span id="L841" rel="#L841">841</span>
<span id="L842" rel="#L842">842</span>
<span id="L843" rel="#L843">843</span>
<span id="L844" rel="#L844">844</span>
<span id="L845" rel="#L845">845</span>
<span id="L846" rel="#L846">846</span>
<span id="L847" rel="#L847">847</span>
<span id="L848" rel="#L848">848</span>
<span id="L849" rel="#L849">849</span>
<span id="L850" rel="#L850">850</span>
<span id="L851" rel="#L851">851</span>
<span id="L852" rel="#L852">852</span>
<span id="L853" rel="#L853">853</span>
<span id="L854" rel="#L854">854</span>
<span id="L855" rel="#L855">855</span>
<span id="L856" rel="#L856">856</span>
<span id="L857" rel="#L857">857</span>
<span id="L858" rel="#L858">858</span>
<span id="L859" rel="#L859">859</span>
<span id="L860" rel="#L860">860</span>
<span id="L861" rel="#L861">861</span>
<span id="L862" rel="#L862">862</span>
<span id="L863" rel="#L863">863</span>
<span id="L864" rel="#L864">864</span>
<span id="L865" rel="#L865">865</span>
<span id="L866" rel="#L866">866</span>
<span id="L867" rel="#L867">867</span>
<span id="L868" rel="#L868">868</span>
<span id="L869" rel="#L869">869</span>
<span id="L870" rel="#L870">870</span>
<span id="L871" rel="#L871">871</span>
<span id="L872" rel="#L872">872</span>
<span id="L873" rel="#L873">873</span>
<span id="L874" rel="#L874">874</span>
<span id="L875" rel="#L875">875</span>
<span id="L876" rel="#L876">876</span>
<span id="L877" rel="#L877">877</span>
<span id="L878" rel="#L878">878</span>
<span id="L879" rel="#L879">879</span>
<span id="L880" rel="#L880">880</span>
<span id="L881" rel="#L881">881</span>
<span id="L882" rel="#L882">882</span>
<span id="L883" rel="#L883">883</span>
<span id="L884" rel="#L884">884</span>
<span id="L885" rel="#L885">885</span>
<span id="L886" rel="#L886">886</span>
<span id="L887" rel="#L887">887</span>
<span id="L888" rel="#L888">888</span>
<span id="L889" rel="#L889">889</span>
<span id="L890" rel="#L890">890</span>
<span id="L891" rel="#L891">891</span>
<span id="L892" rel="#L892">892</span>
<span id="L893" rel="#L893">893</span>
<span id="L894" rel="#L894">894</span>
<span id="L895" rel="#L895">895</span>
<span id="L896" rel="#L896">896</span>
<span id="L897" rel="#L897">897</span>
<span id="L898" rel="#L898">898</span>
<span id="L899" rel="#L899">899</span>
<span id="L900" rel="#L900">900</span>
<span id="L901" rel="#L901">901</span>
<span id="L902" rel="#L902">902</span>
<span id="L903" rel="#L903">903</span>
<span id="L904" rel="#L904">904</span>
<span id="L905" rel="#L905">905</span>
<span id="L906" rel="#L906">906</span>
<span id="L907" rel="#L907">907</span>
<span id="L908" rel="#L908">908</span>
<span id="L909" rel="#L909">909</span>
<span id="L910" rel="#L910">910</span>
<span id="L911" rel="#L911">911</span>
<span id="L912" rel="#L912">912</span>
<span id="L913" rel="#L913">913</span>
<span id="L914" rel="#L914">914</span>
<span id="L915" rel="#L915">915</span>
<span id="L916" rel="#L916">916</span>
<span id="L917" rel="#L917">917</span>
<span id="L918" rel="#L918">918</span>
<span id="L919" rel="#L919">919</span>
<span id="L920" rel="#L920">920</span>
<span id="L921" rel="#L921">921</span>
<span id="L922" rel="#L922">922</span>
<span id="L923" rel="#L923">923</span>
<span id="L924" rel="#L924">924</span>
<span id="L925" rel="#L925">925</span>
<span id="L926" rel="#L926">926</span>
<span id="L927" rel="#L927">927</span>
<span id="L928" rel="#L928">928</span>
<span id="L929" rel="#L929">929</span>
<span id="L930" rel="#L930">930</span>
<span id="L931" rel="#L931">931</span>
<span id="L932" rel="#L932">932</span>
<span id="L933" rel="#L933">933</span>
<span id="L934" rel="#L934">934</span>
<span id="L935" rel="#L935">935</span>
<span id="L936" rel="#L936">936</span>
<span id="L937" rel="#L937">937</span>
<span id="L938" rel="#L938">938</span>
<span id="L939" rel="#L939">939</span>
<span id="L940" rel="#L940">940</span>
<span id="L941" rel="#L941">941</span>
<span id="L942" rel="#L942">942</span>
<span id="L943" rel="#L943">943</span>
<span id="L944" rel="#L944">944</span>
<span id="L945" rel="#L945">945</span>
<span id="L946" rel="#L946">946</span>
<span id="L947" rel="#L947">947</span>
<span id="L948" rel="#L948">948</span>
<span id="L949" rel="#L949">949</span>
<span id="L950" rel="#L950">950</span>
<span id="L951" rel="#L951">951</span>
<span id="L952" rel="#L952">952</span>
<span id="L953" rel="#L953">953</span>
<span id="L954" rel="#L954">954</span>
<span id="L955" rel="#L955">955</span>
<span id="L956" rel="#L956">956</span>
<span id="L957" rel="#L957">957</span>
<span id="L958" rel="#L958">958</span>
<span id="L959" rel="#L959">959</span>
<span id="L960" rel="#L960">960</span>
<span id="L961" rel="#L961">961</span>
<span id="L962" rel="#L962">962</span>
<span id="L963" rel="#L963">963</span>
<span id="L964" rel="#L964">964</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; clojure-mode.el --- Major mode for Clojure code</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2007-2011 Jeffrey Chu, Lennart Staflin, Phil Hagelberg</span></div><div class='line' id='LC4'><span class="c1">;;</span></div><div class='line' id='LC5'><span class="c1">;; Authors: Jeffrey Chu &lt;jochu0@gmail.com&gt;</span></div><div class='line' id='LC6'><span class="c1">;;          Lennart Staflin &lt;lenst@lysator.liu.se&gt;</span></div><div class='line' id='LC7'><span class="c1">;;          Phil Hagelberg &lt;technomancy@gmail.com&gt;</span></div><div class='line' id='LC8'><span class="c1">;; URL: http://github.com/technomancy/clojure-mode</span></div><div class='line' id='LC9'><span class="c1">;; Version: 1.11.4</span></div><div class='line' id='LC10'><span class="c1">;; Keywords: languages, lisp</span></div><div class='line' id='LC11'><br/></div><div class='line' id='LC12'><span class="c1">;; This file is not part of GNU Emacs.</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="c1">;; Provides font-lock, indentation, and navigation for the Clojure</span></div><div class='line' id='LC17'><span class="c1">;; language. (http://clojure.org)</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c1">;; Users of older Emacs (pre-22) should get version 1.4:</span></div><div class='line' id='LC20'><span class="c1">;; http://github.com/technomancy/clojure-mode/tree/1.4</span></div><div class='line' id='LC21'><br/></div><div class='line' id='LC22'><span class="c1">;;; Installation:</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="c1">;; Use package.el. You&#39;ll need to add Marmalade to your archives:</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="c1">;; (require &#39;package)</span></div><div class='line' id='LC27'><span class="c1">;; (add-to-list &#39;package-archives</span></div><div class='line' id='LC28'><span class="c1">;;              &#39;(&quot;marmalade&quot; . &quot;http://marmalade-repo.org/packages/&quot;))</span></div><div class='line' id='LC29'><br/></div><div class='line' id='LC30'><span class="c1">;; If you use a version of Emacs prior to 24 that doesn&#39;t include</span></div><div class='line' id='LC31'><span class="c1">;; package.el, you can get it from http://bit.ly/pkg-el23. If you have</span></div><div class='line' id='LC32'><span class="c1">;; an older package.el installed from tromey.com, you should upgrade</span></div><div class='line' id='LC33'><span class="c1">;; in order to support installation from multiple sources.</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="c1">;; Of course, it&#39;s possible to just place it on your load-path and</span></div><div class='line' id='LC36'><span class="c1">;; require it as well if you don&#39;t mind missing out on</span></div><div class='line' id='LC37'><span class="c1">;; byte-compilation and autoloads.</span></div><div class='line' id='LC38'><br/></div><div class='line' id='LC39'><span class="c1">;; Using clojure-mode with paredit is highly recommended. It is also</span></div><div class='line' id='LC40'><span class="c1">;; available using package.el from the above archive.</span></div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'><span class="c1">;; Use paredit as you normally would with any other mode; for instance:</span></div><div class='line' id='LC43'><span class="c1">;;</span></div><div class='line' id='LC44'><span class="c1">;;   ;; require or autoload paredit-mode</span></div><div class='line' id='LC45'><span class="c1">;;   (defun turn-on-paredit () (paredit-mode 1))</span></div><div class='line' id='LC46'><span class="c1">;;   (add-hook &#39;clojure-mode-hook &#39;turn-on-paredit)</span></div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'><span class="c1">;; See Swank Clojure (http://github.com/technomancy/swank-clojure) for</span></div><div class='line' id='LC49'><span class="c1">;; better interaction with subprocesses via SLIME.</span></div><div class='line' id='LC50'><br/></div><div class='line' id='LC51'><span class="c1">;;; License:</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'><span class="c1">;; This program is free software; you can redistribute it and/or</span></div><div class='line' id='LC54'><span class="c1">;; modify it under the terms of the GNU General Public License</span></div><div class='line' id='LC55'><span class="c1">;; as published by the Free Software Foundation; either version 3</span></div><div class='line' id='LC56'><span class="c1">;; of the License, or (at your option) any later version.</span></div><div class='line' id='LC57'><span class="c1">;;</span></div><div class='line' id='LC58'><span class="c1">;; This program is distributed in the hope that it will be useful,</span></div><div class='line' id='LC59'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC60'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div class='line' id='LC61'><span class="c1">;; GNU General Public License for more details.</span></div><div class='line' id='LC62'><span class="c1">;;</span></div><div class='line' id='LC63'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC64'><span class="c1">;; along with GNU Emacs; see the file COPYING.  If not, write to the</span></div><div class='line' id='LC65'><span class="c1">;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,</span></div><div class='line' id='LC66'><span class="c1">;; Boston, MA 02110-1301, USA.</span></div><div class='line' id='LC67'><br/></div><div class='line' id='LC68'><span class="c1">;;; Code:</span></div><div class='line' id='LC69'><br/></div><div class='line' id='LC70'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;cl</span><span class="p">)</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="p">(</span><span class="nf">defgroup</span> <span class="nv">clojure-mode</span> <span class="nv">nil</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="s">&quot;A mode for Clojure&quot;</span></div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="nv">:prefix</span> <span class="s">&quot;clojure-mode-&quot;</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;applications</span><span class="p">)</span></div><div class='line' id='LC76'><br/></div><div class='line' id='LC77'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">clojure-mode-font-lock-comment-sexp</span> <span class="nv">nil</span></div><div class='line' id='LC78'>&nbsp;&nbsp;<span class="s">&quot;Set to non-nil in order to enable font-lock of (comment...)</span></div><div class='line' id='LC79'><span class="s">forms. This option is experimental. Changing this will require a</span></div><div class='line' id='LC80'><span class="s">restart (ie. M-x clojure-mode) of existing clojure mode buffers.&quot;</span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;boolean</span></div><div class='line' id='LC82'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">clojure-mode-load-command</span>  <span class="s">&quot;(clojure.core/load-file \&quot;%s\&quot;)\n&quot;</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="s">&quot;*Format-string for building a Clojure expression to load a file.</span></div><div class='line' id='LC86'><span class="s">This format string should use `%s&#39; to substitute a file name</span></div><div class='line' id='LC87'><span class="s">and should result in a Clojure expression that will command the inferior</span></div><div class='line' id='LC88'><span class="s">Clojure to load that file.&quot;</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;string</span></div><div class='line' id='LC90'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">clojure-mode-use-backtracking-indent</span> <span class="nv">t</span></div><div class='line' id='LC93'>&nbsp;&nbsp;<span class="s">&quot;Set to non-nil to enable backtracking/context sensitive indentation.&quot;</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;boolean</span></div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC96'><br/></div><div class='line' id='LC97'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">clojure-max-backtracking</span> <span class="mi">3</span></div><div class='line' id='LC98'>&nbsp;&nbsp;<span class="s">&quot;Maximum amount to backtrack up a list to check for context.&quot;</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;integer</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC101'><br/></div><div class='line' id='LC102'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">clojure-mode-map</span></div><div class='line' id='LC103'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nb">map </span><span class="p">(</span><span class="nf">make-sparse-keymap</span><span class="p">)))</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-keymap-parent</span> <span class="nv">map</span> <span class="nv">lisp-mode-shared-map</span><span class="p">)</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="s">&quot;\e\C-x&quot;</span> <span class="ss">&#39;lisp-eval-defun</span><span class="p">)</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="s">&quot;\C-x\C-e&quot;</span> <span class="ss">&#39;lisp-eval-last-sexp</span><span class="p">)</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="s">&quot;\C-c\C-e&quot;</span> <span class="ss">&#39;lisp-eval-last-sexp</span><span class="p">)</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="s">&quot;\C-c\C-l&quot;</span> <span class="ss">&#39;clojure-load-file</span><span class="p">)</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="s">&quot;\C-c\C-r&quot;</span> <span class="ss">&#39;lisp-eval-region</span><span class="p">)</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="s">&quot;\C-c\C-z&quot;</span> <span class="ss">&#39;run-lisp</span><span class="p">)</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;RET&quot;</span><span class="p">)</span> <span class="ss">&#39;reindent-then-newline-and-indent</span><span class="p">)</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c t&quot;</span><span class="p">)</span> <span class="ss">&#39;clojure-jump-to-test</span><span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">map</span><span class="p">)</span></div><div class='line' id='LC114'>&nbsp;&nbsp;<span class="s">&quot;Keymap for Clojure mode. Inherits from `lisp-mode-shared-map&#39;.&quot;</span><span class="p">)</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">clojure-mode-syntax-table</span></div><div class='line' id='LC117'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">table</span> <span class="p">(</span><span class="nf">copy-syntax-table</span> <span class="nv">emacs-lisp-mode-syntax-table</span><span class="p">)))</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?~</span> <span class="s">&quot;&#39;   &quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; can&#39;t safely make commas whitespace since it will apply even</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; inside string literals--ick!</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (modify-syntax-entry ?, &quot;    &quot; table)</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\{</span> <span class="s">&quot;(}&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\}</span> <span class="s">&quot;){&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\[</span> <span class="s">&quot;(]&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\]</span> <span class="s">&quot;)[&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?^</span> <span class="s">&quot;&#39;&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">table</span><span class="p">))</span></div><div class='line' id='LC128'><br/></div><div class='line' id='LC129'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">clojure-mode-abbrev-table</span> <span class="nv">nil</span></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="s">&quot;Abbrev table used in clojure-mode buffers.&quot;</span><span class="p">)</span></div><div class='line' id='LC131'><br/></div><div class='line' id='LC132'><span class="p">(</span><span class="nf">define-abbrev-table</span> <span class="ss">&#39;clojure-mode-abbrev-table</span> <span class="p">())</span></div><div class='line' id='LC133'><br/></div><div class='line' id='LC134'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">clojure-prev-l/c-dir/file</span> <span class="nv">nil</span></div><div class='line' id='LC135'>&nbsp;&nbsp;<span class="s">&quot;Record last directory and file used in loading or compiling.</span></div><div class='line' id='LC136'><span class="s">This holds a cons cell of the form `(DIRECTORY . FILE)&#39;</span></div><div class='line' id='LC137'><span class="s">describing the last `clojure-load-file&#39; or `clojure-compile-file&#39; command.&quot;</span><span class="p">)</span></div><div class='line' id='LC138'><br/></div><div class='line' id='LC139'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">clojure-test-ns-segment-position</span> <span class="mi">-1</span></div><div class='line' id='LC140'>&nbsp;&nbsp;<span class="s">&quot;Which segment of the ns is \&quot;test\&quot; inserted in your test name convention.</span></div><div class='line' id='LC141'><br/></div><div class='line' id='LC142'><span class="s">Customize this depending on your project&#39;s conventions. Negative</span></div><div class='line' id='LC143'><span class="s">numbers count from the end:</span></div><div class='line' id='LC144'><br/></div><div class='line' id='LC145'><span class="s">  leiningen.compile -&gt; leiningen.test.compile (uses 1)</span></div><div class='line' id='LC146'><span class="s">  clojure.http.client -&gt; clojure.http.test.client (uses -1)&quot;</span><span class="p">)</span></div><div class='line' id='LC147'><br/></div><div class='line' id='LC148'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-mode-version</span> <span class="p">()</span></div><div class='line' id='LC149'>&nbsp;&nbsp;<span class="s">&quot;Currently package.el doesn&#39;t support prerelease version numbers.&quot;</span></div><div class='line' id='LC150'>&nbsp;&nbsp;<span class="s">&quot;1.11.4&quot;</span><span class="p">)</span></div><div class='line' id='LC151'><br/></div><div class='line' id='LC152'><span class="c1">;;;###autoload</span></div><div class='line' id='LC153'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-mode</span> <span class="p">()</span></div><div class='line' id='LC154'>&nbsp;&nbsp;<span class="s">&quot;Major mode for editing Clojure code - similar to Lisp mode.</span></div><div class='line' id='LC155'><span class="s">Commands:</span></div><div class='line' id='LC156'><span class="s">Delete converts tabs to spaces as it moves back.</span></div><div class='line' id='LC157'><span class="s">Blank lines separate paragraphs.  Semicolons start comments.</span></div><div class='line' id='LC158'><span class="s">\\{clojure-mode-map}</span></div><div class='line' id='LC159'><span class="s">Note that `run-lisp&#39; may be used either to start an inferior Lisp job</span></div><div class='line' id='LC160'><span class="s">or to switch back to an existing one.</span></div><div class='line' id='LC161'><br/></div><div class='line' id='LC162'><span class="s">Entry to this mode calls the value of `clojure-mode-hook&#39;</span></div><div class='line' id='LC163'><span class="s">if that value is non-nil.&quot;</span></div><div class='line' id='LC164'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC165'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">kill-all-local-variables</span><span class="p">)</span></div><div class='line' id='LC166'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">use-local-map</span> <span class="nv">clojure-mode-map</span><span class="p">)</span></div><div class='line' id='LC167'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">mode-name</span> <span class="s">&quot;Clojure&quot;</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">major-mode</span> <span class="ss">&#39;clojure-mode</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">imenu-create-index-function</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">lambda </span><span class="p">()</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">imenu--generic-function</span> <span class="o">&#39;</span><span class="p">((</span><span class="nf">nil</span> <span class="nv">clojure-match-next-def</span> <span class="mi">0</span><span class="p">))))</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">local-abbrev-table</span> <span class="nv">clojure-mode-abbrev-table</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">indent-tabs-mode</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC174'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">lisp-mode-variables</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC175'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-syntax-table</span> <span class="nv">clojure-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC176'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-start-skip</span><span class="p">)</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\(\\(^\\|[^\\\\\n]\\)\\(\\\\\\\\\\)*\\)\\(;+\\|#|\\) *&quot;</span><span class="p">)</span></div><div class='line' id='LC178'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;lisp-indent-function</span><span class="p">)</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-indent-function</span><span class="p">)</span></div><div class='line' id='LC180'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">&lt; </span><span class="nv">emacs-major-version</span> <span class="mi">24</span><span class="p">)</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;forward-sexp-function</span><span class="p">)</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-forward-sexp</span><span class="p">))</span></div><div class='line' id='LC183'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;lisp-doc-string-elt-property</span><span class="p">)</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-doc-string-elt</span><span class="p">)</span></div><div class='line' id='LC185'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;inferior-lisp-program</span><span class="p">)</span> <span class="s">&quot;lein repl&quot;</span><span class="p">)</span></div><div class='line' id='LC186'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;parse-sexp-ignore-comments</span><span class="p">)</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC187'><br/></div><div class='line' id='LC188'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">clojure-mode-font-lock-setup</span><span class="p">)</span></div><div class='line' id='LC189'><br/></div><div class='line' id='LC190'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">run-mode-hooks</span> <span class="ss">&#39;clojure-mode-hook</span><span class="p">)</span></div><div class='line' id='LC191'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">run-hooks</span> <span class="ss">&#39;prog-mode-hook</span><span class="p">)</span></div><div class='line' id='LC192'><br/></div><div class='line' id='LC193'>&nbsp;&nbsp;<span class="c1">;; Enable curly braces when paredit is enabled in clojure-mode-hook</span></div><div class='line' id='LC194'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">featurep</span> <span class="ss">&#39;paredit</span><span class="p">)</span> <span class="nv">paredit-mode</span> <span class="p">(</span><span class="nb">&gt;= </span><span class="nv">paredit-version</span> <span class="mi">21</span><span class="p">))</span></div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">clojure-mode-map</span> <span class="s">&quot;{&quot;</span> <span class="ss">&#39;paredit-open-curly</span><span class="p">)</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">clojure-mode-map</span> <span class="s">&quot;}&quot;</span> <span class="ss">&#39;paredit-close-curly</span><span class="p">)))</span></div><div class='line' id='LC197'><br/></div><div class='line' id='LC198'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-load-file</span> <span class="p">(</span><span class="nf">file-name</span><span class="p">)</span></div><div class='line' id='LC199'>&nbsp;&nbsp;<span class="s">&quot;Load a Lisp file into the inferior Lisp process.&quot;</span></div><div class='line' id='LC200'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="p">(</span><span class="nf">comint-get-source</span> <span class="s">&quot;Load Clojure file: &quot;</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">clojure-prev-l/c-dir/file</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">clojure-mode</span><span class="p">)</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC203'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">comint-check-source</span> <span class="nv">file-name</span><span class="p">)</span> <span class="c1">; Check to see if buffer needs saved.</span></div><div class='line' id='LC204'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">clojure-prev-l/c-dir/file</span> <span class="p">(</span><span class="nb">cons </span><span class="p">(</span><span class="nf">file-name-directory</span> <span class="nv">file-name</span><span class="p">)</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-nondirectory</span> <span class="nv">file-name</span><span class="p">)))</span></div><div class='line' id='LC206'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">comint-send-string</span> <span class="p">(</span><span class="nf">inferior-lisp-proc</span><span class="p">)</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="nv">clojure-mode-load-command</span> <span class="nv">file-name</span><span class="p">))</span></div><div class='line' id='LC208'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">switch-to-lisp</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC209'><br/></div><div class='line' id='LC210'><br/></div><div class='line' id='LC211'><br/></div><div class='line' id='LC212'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-match-next-def</span> <span class="p">()</span></div><div class='line' id='LC213'>&nbsp;&nbsp;<span class="s">&quot;Scans the buffer backwards for the next top-level definition.</span></div><div class='line' id='LC214'><span class="s">Called by `imenu--generic-function&#39;.&quot;</span></div><div class='line' id='LC215'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">re-search-backward</span> <span class="s">&quot;^\\s *(def\\S *[ \n\t]+&quot;</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;#?\\^&quot;</span><span class="p">)</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">(</span><span class="nf">forward-sexp-function</span><span class="p">)</span> <span class="c1">; using the built-in one</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span><span class="p">)))</span>           <span class="c1">; skip the metadata</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">re-search-forward</span> <span class="s">&quot;[^ \n\t)]+&quot;</span><span class="p">))))</span></div><div class='line' id='LC222'><br/></div><div class='line' id='LC223'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-mode-font-lock-setup</span> <span class="p">()</span></div><div class='line' id='LC224'>&nbsp;&nbsp;<span class="s">&quot;Configures font-lock for editing Clojure code.&quot;</span></div><div class='line' id='LC225'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC226'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;font-lock-multiline</span><span class="p">)</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC227'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;font-lock-extend-region-functions</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-font-lock-extend-region-def</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC229'><br/></div><div class='line' id='LC230'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">clojure-mode-font-lock-comment-sexp</span></div><div class='line' id='LC231'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;font-lock-extend-region-functions</span></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-font-lock-extend-region-comment</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;clojure-font-lock-keywords</span><span class="p">)</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;clojure-font-lock-keywords</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-font-lock-mark-comment</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;open-paren-in-column-0-is-defun-start</span><span class="p">)</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC237'><br/></div><div class='line' id='LC238'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">font-lock-defaults</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">clojure-font-lock-keywords</span>    <span class="c1">; keywords</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span> <span class="nv">nil</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="s">&quot;+-*/.&lt;&gt;=!?$%_&amp;~^:@&quot;</span> <span class="o">.</span> <span class="s">&quot;w&quot;</span><span class="p">))</span> <span class="c1">; syntax alist</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">font-lock-mark-block-function</span> <span class="o">.</span> <span class="nv">mark-defun</span><span class="p">)</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">font-lock-syntactic-face-function</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">.</span> <span class="nv">lisp-font-lock-syntactic-face-function</span><span class="p">))))</span></div><div class='line' id='LC246'><br/></div><div class='line' id='LC247'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-font-lock-def-at-point</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span></div><div class='line' id='LC248'>&nbsp;&nbsp;<span class="s">&quot;Find the position range between the top-most def* and the</span></div><div class='line' id='LC249'><span class="s">fourth element afterwards. Note that this means there&#39;s no</span></div><div class='line' id='LC250'><span class="s">gaurantee of proper font locking in def* forms that are not at</span></div><div class='line' id='LC251'><span class="s">top-level.&quot;</span></div><div class='line' id='LC252'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">point</span><span class="p">)</span></div><div class='line' id='LC253'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="nv">nil</span></div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">beginning-of-defun</span><span class="p">)</span></div><div class='line' id='LC255'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC256'><br/></div><div class='line' id='LC257'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">beg-def</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nb">= </span><span class="nv">point</span> <span class="nv">beg-def</span><span class="p">))</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;(def&quot;</span><span class="p">))</span></div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="nv">nil</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; move forward as much as possible until failure (or success)</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span><span class="p">)</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dotimes</span> <span class="p">(</span><span class="nf">i</span> <span class="mi">4</span><span class="p">)</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span><span class="p">)))</span></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">cons </span><span class="nv">beg-def</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))))</span></div><div class='line' id='LC268'><br/></div><div class='line' id='LC269'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-font-lock-extend-region-def</span> <span class="p">()</span></div><div class='line' id='LC270'>&nbsp;&nbsp;<span class="s">&quot;Move fontification boundaries to always include the first four</span></div><div class='line' id='LC271'><span class="s">elements of a def* forms.&quot;</span></div><div class='line' id='LC272'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">changed</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">def</span> <span class="p">(</span><span class="nf">clojure-font-lock-def-at-point</span> <span class="nv">font-lock-beg</span><span class="p">)))</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">def</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">destructuring-bind</span> <span class="p">(</span><span class="nf">def-beg</span> <span class="o">.</span> <span class="nv">def-end</span><span class="p">)</span> <span class="nv">def</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">&lt; </span><span class="nv">def-beg</span> <span class="nv">font-lock-beg</span><span class="p">)</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&lt; </span><span class="nv">font-lock-beg</span> <span class="nv">def-end</span><span class="p">))</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">font-lock-beg</span> <span class="nv">def-beg</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">changed</span> <span class="nv">t</span><span class="p">)))))</span></div><div class='line' id='LC280'><br/></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">def</span> <span class="p">(</span><span class="nf">clojure-font-lock-def-at-point</span> <span class="nv">font-lock-end</span><span class="p">)))</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">def</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">destructuring-bind</span> <span class="p">(</span><span class="nf">def-beg</span> <span class="o">.</span> <span class="nv">def-end</span><span class="p">)</span> <span class="nv">def</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">&lt; </span><span class="nv">def-beg</span> <span class="nv">font-lock-end</span><span class="p">)</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&lt; </span><span class="nv">font-lock-end</span> <span class="nv">def-end</span><span class="p">))</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">font-lock-end</span> <span class="nv">def-end</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">changed</span> <span class="nv">t</span><span class="p">)))))</span></div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">changed</span><span class="p">))</span></div><div class='line' id='LC289'><br/></div><div class='line' id='LC290'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-font-lock-extend-region-comment</span> <span class="p">()</span></div><div class='line' id='LC291'>&nbsp;&nbsp;<span class="s">&quot;Move fontification boundaries to always contain</span></div><div class='line' id='LC292'><span class="s">  entire (comment ..) sexp. Does not work if you have a</span></div><div class='line' id='LC293'><span class="s">  white-space between ( and comment, but that is omitted to make</span></div><div class='line' id='LC294'><span class="s">  this run faster.&quot;</span></div><div class='line' id='LC295'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">changed</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">font-lock-beg</span><span class="p">)</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="nv">nil</span> <span class="p">(</span><span class="nf">beginning-of-defun</span><span class="p">)</span> <span class="p">(</span><span class="nf">error</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC298'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">pos</span> <span class="p">(</span><span class="nf">re-search-forward</span> <span class="s">&quot;(comment\\&gt;&quot;</span> <span class="nv">font-lock-end</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">pos</span></div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-8</span><span class="p">)</span></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">&lt; </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">font-lock-beg</span><span class="p">)</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">font-lock-beg</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">changed</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC304'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="nv">nil</span> <span class="p">(</span><span class="nf">forward-sexp</span><span class="p">)</span> <span class="p">(</span><span class="nf">error</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">&gt; </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">font-lock-end</span><span class="p">)</span></div><div class='line' id='LC306'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">font-lock-end</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">changed</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC308'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">changed</span><span class="p">))</span></div><div class='line' id='LC309'><br/></div><div class='line' id='LC310'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-font-lock-mark-comment</span> <span class="p">(</span><span class="nf">limit</span><span class="p">)</span></div><div class='line' id='LC311'>&nbsp;&nbsp;<span class="s">&quot;Marks all (comment ..) forms with font-lock-comment-face.&quot;</span></div><div class='line' id='LC312'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">(</span><span class="nf">pos</span><span class="p">)</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">&lt; </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">limit</span><span class="p">)</span></div><div class='line' id='LC314'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">pos</span> <span class="p">(</span><span class="nf">re-search-forward</span> <span class="s">&quot;(comment\\&gt;&quot;</span> <span class="nv">limit</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC315'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">pos</span></div><div class='line' id='LC316'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-8</span><span class="p">)</span></div><div class='line' id='LC317'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="nv">nil</span></div><div class='line' id='LC318'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-text-properties</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span> <span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span><span class="p">)</span> <span class="p">(</span><span class="mi">1</span><span class="nv">-</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC320'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">face</span> <span class="nv">font-lock-comment-face</span> <span class="nv">multiline</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC321'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="p">(</span><span class="nf">forward-char</span> <span class="mi">8</span><span class="p">))))))</span></div><div class='line' id='LC322'>&nbsp;&nbsp;<span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC323'><br/></div><div class='line' id='LC324'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">clojure-font-lock-keywords</span></div><div class='line' id='LC325'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">eval-when-compile</span></div><div class='line' id='LC326'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span> <span class="c1">;; Definitions.</span></div><div class='line' id='LC327'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;(\\(?:clojure.core/\\)?\\(&quot;</span></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-opt</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;defn&quot;</span> <span class="s">&quot;defn-&quot;</span> <span class="s">&quot;def&quot;</span> <span class="s">&quot;def-&quot;</span> <span class="s">&quot;defonce&quot;</span></div><div class='line' id='LC329'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defmulti&quot;</span> <span class="s">&quot;defmethod&quot;</span> <span class="s">&quot;defmacro&quot;</span></div><div class='line' id='LC330'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defstruct&quot;</span> <span class="s">&quot;deftype&quot;</span> <span class="s">&quot;defprotocol&quot;</span></div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defrecord&quot;</span> <span class="s">&quot;deftest&quot;</span></div><div class='line' id='LC332'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;slice&quot;</span> <span class="s">&quot;def\\[a-z\\]&quot;</span></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defalias&quot;</span> <span class="s">&quot;defhinted&quot;</span> <span class="s">&quot;defmacro-&quot;</span></div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defn-memo&quot;</span> <span class="s">&quot;defnk&quot;</span> <span class="s">&quot;defonce-&quot;</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defstruct-&quot;</span> <span class="s">&quot;defunbound&quot;</span> <span class="s">&quot;defunbound-&quot;</span></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defvar&quot;</span> <span class="s">&quot;defvar-&quot;</span><span class="p">))</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Function declarations.</span></div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\)\\&gt;&quot;</span></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Any whitespace</span></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;[ \r\n\t]*&quot;</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Possibly type or metadata</span></div><div class='line' id='LC342'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\(?:#?^\\(?:{[^}]*}\\|\\sw+\\)[ \r\n\t]*\\)*&quot;</span></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\(\\sw+\\)?&quot;</span><span class="p">)</span></div><div class='line' id='LC344'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="mi">1</span> <span class="nv">font-lock-keyword-face</span><span class="p">)</span></div><div class='line' id='LC345'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="mi">2</span> <span class="nv">font-lock-function-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC346'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Deprecated functions</span></div><div class='line' id='LC347'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">concat</span></div><div class='line' id='LC348'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;(\\(?:clojure.core/\\)?&quot;</span></div><div class='line' id='LC349'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-opt</span></div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;add-watcher&quot;</span> <span class="s">&quot;remove-watcher&quot;</span> <span class="s">&quot;add-classpath&quot;</span><span class="p">)</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC351'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\&gt;&quot;</span><span class="p">)</span></div><div class='line' id='LC352'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1</span> <span class="nv">font-lock-warning-face</span><span class="p">)</span></div><div class='line' id='LC353'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Control structures</span></div><div class='line' id='LC354'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">concat</span></div><div class='line' id='LC355'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;(\\(?:clojure.core/\\)?&quot;</span></div><div class='line' id='LC356'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-opt</span></div><div class='line' id='LC357'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;let&quot;</span> <span class="s">&quot;letfn&quot;</span> <span class="s">&quot;do&quot;</span></div><div class='line' id='LC358'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;case&quot;</span> <span class="s">&quot;cond&quot;</span> <span class="s">&quot;condp&quot;</span></div><div class='line' id='LC359'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;for&quot;</span> <span class="s">&quot;loop&quot;</span> <span class="s">&quot;recur&quot;</span></div><div class='line' id='LC360'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;when&quot;</span> <span class="s">&quot;when-not&quot;</span> <span class="s">&quot;when-let&quot;</span> <span class="s">&quot;when-first&quot;</span></div><div class='line' id='LC361'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;if&quot;</span> <span class="s">&quot;if-let&quot;</span> <span class="s">&quot;if-not&quot;</span></div><div class='line' id='LC362'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;.&quot;</span> <span class="s">&quot;..&quot;</span> <span class="s">&quot;-&gt;&quot;</span> <span class="s">&quot;-&gt;&gt;&quot;</span> <span class="s">&quot;doto&quot;</span></div><div class='line' id='LC363'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;and&quot;</span> <span class="s">&quot;or&quot;</span></div><div class='line' id='LC364'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;dosync&quot;</span> <span class="s">&quot;doseq&quot;</span> <span class="s">&quot;dotimes&quot;</span> <span class="s">&quot;dorun&quot;</span> <span class="s">&quot;doall&quot;</span></div><div class='line' id='LC365'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;load&quot;</span> <span class="s">&quot;import&quot;</span> <span class="s">&quot;unimport&quot;</span> <span class="s">&quot;ns&quot;</span> <span class="s">&quot;in-ns&quot;</span> <span class="s">&quot;refer&quot;</span></div><div class='line' id='LC366'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;try&quot;</span> <span class="s">&quot;catch&quot;</span> <span class="s">&quot;finally&quot;</span> <span class="s">&quot;throw&quot;</span></div><div class='line' id='LC367'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;with-open&quot;</span> <span class="s">&quot;with-local-vars&quot;</span> <span class="s">&quot;binding&quot;</span></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;gen-class&quot;</span> <span class="s">&quot;gen-and-load-class&quot;</span> <span class="s">&quot;gen-and-save-class&quot;</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;handler-case&quot;</span> <span class="s">&quot;handle&quot;</span><span class="p">)</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\&gt;&quot;</span><span class="p">)</span></div><div class='line' id='LC371'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1</span> <span class="nv">font-lock-builtin-face</span><span class="p">)</span></div><div class='line' id='LC372'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Built-ins</span></div><div class='line' id='LC373'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">concat</span></div><div class='line' id='LC374'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;(\\(?:clojure.core/\\)?&quot;</span></div><div class='line' id='LC375'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-opt</span></div><div class='line' id='LC376'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;*&quot;</span> <span class="s">&quot;*1&quot;</span> <span class="s">&quot;*2&quot;</span> <span class="s">&quot;*3&quot;</span> <span class="s">&quot;*agent*&quot;</span></div><div class='line' id='LC377'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*allow-unresolved-vars*&quot;</span> <span class="s">&quot;*assert*&quot;</span> <span class="s">&quot;*clojure-version*&quot;</span> <span class="s">&quot;*command-line-args*&quot;</span> <span class="s">&quot;*compile-files*&quot;</span></div><div class='line' id='LC378'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*compile-path*&quot;</span> <span class="s">&quot;*e&quot;</span> <span class="s">&quot;*err*&quot;</span> <span class="s">&quot;*file*&quot;</span> <span class="s">&quot;*flush-on-newline*&quot;</span></div><div class='line' id='LC379'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*in*&quot;</span> <span class="s">&quot;*macro-meta*&quot;</span> <span class="s">&quot;*math-context*&quot;</span> <span class="s">&quot;*ns*&quot;</span> <span class="s">&quot;*out*&quot;</span></div><div class='line' id='LC380'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*print-dup*&quot;</span> <span class="s">&quot;*print-length*&quot;</span> <span class="s">&quot;*print-level*&quot;</span> <span class="s">&quot;*print-meta*&quot;</span> <span class="s">&quot;*print-readably*&quot;</span></div><div class='line' id='LC381'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*read-eval*&quot;</span> <span class="s">&quot;*source-path*&quot;</span> <span class="s">&quot;*use-context-classloader*&quot;</span> <span class="s">&quot;*warn-on-reflection*&quot;</span> <span class="s">&quot;+&quot;</span></div><div class='line' id='LC382'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;-&quot;</span> <span class="s">&quot;/&quot;</span></div><div class='line' id='LC383'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;&lt;&quot;</span> <span class="s">&quot;&lt;=&quot;</span> <span class="s">&quot;=&quot;</span> <span class="s">&quot;==&quot;</span> <span class="s">&quot;&gt;&quot;</span></div><div class='line' id='LC384'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;&gt;=&quot;</span> <span class="s">&quot;accessor&quot;</span> <span class="s">&quot;aclone&quot;</span></div><div class='line' id='LC385'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;agent&quot;</span> <span class="s">&quot;agent-errors&quot;</span> <span class="s">&quot;aget&quot;</span> <span class="s">&quot;alength&quot;</span> <span class="s">&quot;alias&quot;</span></div><div class='line' id='LC386'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;all-ns&quot;</span> <span class="s">&quot;alter&quot;</span> <span class="s">&quot;alter-meta!&quot;</span> <span class="s">&quot;alter-var-root&quot;</span> <span class="s">&quot;amap&quot;</span></div><div class='line' id='LC387'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ancestors&quot;</span> <span class="s">&quot;and&quot;</span> <span class="s">&quot;apply&quot;</span> <span class="s">&quot;areduce&quot;</span> <span class="s">&quot;array-map&quot;</span></div><div class='line' id='LC388'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;aset&quot;</span> <span class="s">&quot;aset-boolean&quot;</span> <span class="s">&quot;aset-byte&quot;</span> <span class="s">&quot;aset-char&quot;</span> <span class="s">&quot;aset-double&quot;</span></div><div class='line' id='LC389'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;aset-float&quot;</span> <span class="s">&quot;aset-int&quot;</span> <span class="s">&quot;aset-long&quot;</span> <span class="s">&quot;aset-short&quot;</span> <span class="s">&quot;assert&quot;</span></div><div class='line' id='LC390'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;assoc&quot;</span> <span class="s">&quot;assoc!&quot;</span> <span class="s">&quot;assoc-in&quot;</span> <span class="s">&quot;associative?&quot;</span> <span class="s">&quot;atom&quot;</span></div><div class='line' id='LC391'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;await&quot;</span> <span class="s">&quot;await-for&quot;</span> <span class="s">&quot;await1&quot;</span> <span class="s">&quot;bases&quot;</span> <span class="s">&quot;bean&quot;</span></div><div class='line' id='LC392'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;bigdec&quot;</span> <span class="s">&quot;bigint&quot;</span> <span class="s">&quot;binding&quot;</span> <span class="s">&quot;bit-and&quot;</span> <span class="s">&quot;bit-and-not&quot;</span></div><div class='line' id='LC393'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;bit-clear&quot;</span> <span class="s">&quot;bit-flip&quot;</span> <span class="s">&quot;bit-not&quot;</span> <span class="s">&quot;bit-or&quot;</span> <span class="s">&quot;bit-set&quot;</span></div><div class='line' id='LC394'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;bit-shift-left&quot;</span> <span class="s">&quot;bit-shift-right&quot;</span> <span class="s">&quot;bit-test&quot;</span> <span class="s">&quot;bit-xor&quot;</span> <span class="s">&quot;boolean&quot;</span></div><div class='line' id='LC395'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;boolean-array&quot;</span> <span class="s">&quot;booleans&quot;</span> <span class="s">&quot;bound-fn&quot;</span> <span class="s">&quot;bound-fn*&quot;</span> <span class="s">&quot;butlast&quot;</span></div><div class='line' id='LC396'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;byte&quot;</span> <span class="s">&quot;byte-array&quot;</span> <span class="s">&quot;bytes&quot;</span> <span class="s">&quot;case&quot;</span> <span class="s">&quot;cast&quot;</span> <span class="s">&quot;char&quot;</span></div><div class='line' id='LC397'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;char-array&quot;</span> <span class="s">&quot;char-escape-string&quot;</span> <span class="s">&quot;char-name-string&quot;</span> <span class="s">&quot;char?&quot;</span> <span class="s">&quot;chars&quot;</span></div><div class='line' id='LC398'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;chunk&quot;</span> <span class="s">&quot;chunk-append&quot;</span> <span class="s">&quot;chunk-buffer&quot;</span> <span class="s">&quot;chunk-cons&quot;</span> <span class="s">&quot;chunk-first&quot;</span></div><div class='line' id='LC399'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;chunk-next&quot;</span> <span class="s">&quot;chunk-rest&quot;</span> <span class="s">&quot;chunked-seq?&quot;</span> <span class="s">&quot;class&quot;</span> <span class="s">&quot;class?&quot;</span></div><div class='line' id='LC400'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;clear-agent-errors&quot;</span> <span class="s">&quot;clojure-version&quot;</span> <span class="s">&quot;coll?&quot;</span> <span class="s">&quot;comment&quot;</span> <span class="s">&quot;commute&quot;</span></div><div class='line' id='LC401'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;comp&quot;</span> <span class="s">&quot;comparator&quot;</span> <span class="s">&quot;compare&quot;</span> <span class="s">&quot;compare-and-set!&quot;</span> <span class="s">&quot;compile&quot;</span></div><div class='line' id='LC402'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;complement&quot;</span> <span class="s">&quot;concat&quot;</span> <span class="s">&quot;cond&quot;</span> <span class="s">&quot;condp&quot;</span> <span class="s">&quot;conj&quot;</span></div><div class='line' id='LC403'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;conj!&quot;</span> <span class="s">&quot;cons&quot;</span> <span class="s">&quot;constantly&quot;</span> <span class="s">&quot;construct-proxy&quot;</span> <span class="s">&quot;contains?&quot;</span></div><div class='line' id='LC404'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;count&quot;</span> <span class="s">&quot;counted?&quot;</span> <span class="s">&quot;create-ns&quot;</span> <span class="s">&quot;create-struct&quot;</span> <span class="s">&quot;cycle&quot;</span></div><div class='line' id='LC405'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;dec&quot;</span> <span class="s">&quot;decimal?&quot;</span> <span class="s">&quot;declare&quot;</span> <span class="s">&quot;definline&quot;</span> <span class="s">&quot;defmacro&quot;</span></div><div class='line' id='LC406'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defmethod&quot;</span> <span class="s">&quot;defmulti&quot;</span> <span class="s">&quot;defn&quot;</span> <span class="s">&quot;defn-&quot;</span> <span class="s">&quot;defonce&quot;</span></div><div class='line' id='LC407'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;defstruct&quot;</span> <span class="s">&quot;delay&quot;</span> <span class="s">&quot;delay?&quot;</span> <span class="s">&quot;deliver&quot;</span> <span class="s">&quot;deref&quot;</span></div><div class='line' id='LC408'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;derive&quot;</span> <span class="s">&quot;descendants&quot;</span> <span class="s">&quot;destructure&quot;</span> <span class="s">&quot;disj&quot;</span> <span class="s">&quot;disj!&quot;</span></div><div class='line' id='LC409'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;dissoc&quot;</span> <span class="s">&quot;dissoc!&quot;</span> <span class="s">&quot;distinct&quot;</span> <span class="s">&quot;distinct?&quot;</span> <span class="s">&quot;doall&quot;</span></div><div class='line' id='LC410'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;doc&quot;</span> <span class="s">&quot;dorun&quot;</span> <span class="s">&quot;doseq&quot;</span> <span class="s">&quot;dosync&quot;</span> <span class="s">&quot;dotimes&quot;</span></div><div class='line' id='LC411'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;doto&quot;</span> <span class="s">&quot;double&quot;</span> <span class="s">&quot;double-array&quot;</span> <span class="s">&quot;doubles&quot;</span> <span class="s">&quot;drop&quot;</span></div><div class='line' id='LC412'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;drop-last&quot;</span> <span class="s">&quot;drop-while&quot;</span> <span class="s">&quot;empty&quot;</span> <span class="s">&quot;empty?&quot;</span> <span class="s">&quot;ensure&quot;</span></div><div class='line' id='LC413'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;enumeration-seq&quot;</span> <span class="s">&quot;eval&quot;</span> <span class="s">&quot;even?&quot;</span> <span class="s">&quot;every?&quot;</span></div><div class='line' id='LC414'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;extend&quot;</span> <span class="s">&quot;extend-protocol&quot;</span> <span class="s">&quot;extend-type&quot;</span> <span class="s">&quot;extends?&quot;</span> <span class="s">&quot;extenders&quot;</span></div><div class='line' id='LC415'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;false?&quot;</span> <span class="s">&quot;ffirst&quot;</span> <span class="s">&quot;file-seq&quot;</span> <span class="s">&quot;filter&quot;</span> <span class="s">&quot;find&quot;</span> <span class="s">&quot;find-doc&quot;</span></div><div class='line' id='LC416'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;find-ns&quot;</span> <span class="s">&quot;find-var&quot;</span> <span class="s">&quot;first&quot;</span> <span class="s">&quot;flatten&quot;</span> <span class="s">&quot;float&quot;</span> <span class="s">&quot;float-array&quot;</span></div><div class='line' id='LC417'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;float?&quot;</span> <span class="s">&quot;floats&quot;</span> <span class="s">&quot;flush&quot;</span> <span class="s">&quot;fn&quot;</span> <span class="s">&quot;fn?&quot;</span></div><div class='line' id='LC418'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;fnext&quot;</span> <span class="s">&quot;for&quot;</span> <span class="s">&quot;force&quot;</span> <span class="s">&quot;format&quot;</span> <span class="s">&quot;future&quot;</span></div><div class='line' id='LC419'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;future-call&quot;</span> <span class="s">&quot;future-cancel&quot;</span> <span class="s">&quot;future-cancelled?&quot;</span> <span class="s">&quot;future-done?&quot;</span> <span class="s">&quot;future?&quot;</span></div><div class='line' id='LC420'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;gen-class&quot;</span> <span class="s">&quot;gen-interface&quot;</span> <span class="s">&quot;gensym&quot;</span> <span class="s">&quot;get&quot;</span> <span class="s">&quot;get-in&quot;</span></div><div class='line' id='LC421'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;get-method&quot;</span> <span class="s">&quot;get-proxy-class&quot;</span> <span class="s">&quot;get-thread-bindings&quot;</span> <span class="s">&quot;get-validator&quot;</span> <span class="s">&quot;hash&quot;</span></div><div class='line' id='LC422'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;hash-map&quot;</span> <span class="s">&quot;hash-set&quot;</span> <span class="s">&quot;identical?&quot;</span> <span class="s">&quot;identity&quot;</span> <span class="s">&quot;if-let&quot;</span></div><div class='line' id='LC423'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;if-not&quot;</span> <span class="s">&quot;ifn?&quot;</span> <span class="s">&quot;import&quot;</span> <span class="s">&quot;in-ns&quot;</span> <span class="s">&quot;inc&quot;</span></div><div class='line' id='LC424'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;init-proxy&quot;</span> <span class="s">&quot;instance?&quot;</span> <span class="s">&quot;int&quot;</span> <span class="s">&quot;int-array&quot;</span> <span class="s">&quot;integer?&quot;</span></div><div class='line' id='LC425'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;interleave&quot;</span> <span class="s">&quot;intern&quot;</span> <span class="s">&quot;interpose&quot;</span> <span class="s">&quot;into&quot;</span> <span class="s">&quot;into-array&quot;</span></div><div class='line' id='LC426'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ints&quot;</span> <span class="s">&quot;io!&quot;</span> <span class="s">&quot;isa?&quot;</span> <span class="s">&quot;iterate&quot;</span> <span class="s">&quot;iterator-seq&quot;</span></div><div class='line' id='LC427'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;juxt&quot;</span> <span class="s">&quot;key&quot;</span> <span class="s">&quot;keys&quot;</span> <span class="s">&quot;keyword&quot;</span> <span class="s">&quot;keyword?&quot;</span></div><div class='line' id='LC428'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;last&quot;</span> <span class="s">&quot;lazy-cat&quot;</span> <span class="s">&quot;lazy-seq&quot;</span> <span class="s">&quot;let&quot;</span> <span class="s">&quot;letfn&quot;</span></div><div class='line' id='LC429'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;line-seq&quot;</span> <span class="s">&quot;list&quot;</span> <span class="s">&quot;list*&quot;</span> <span class="s">&quot;list?&quot;</span> <span class="s">&quot;load&quot;</span></div><div class='line' id='LC430'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;load-file&quot;</span> <span class="s">&quot;load-reader&quot;</span> <span class="s">&quot;load-string&quot;</span> <span class="s">&quot;loaded-libs&quot;</span> <span class="s">&quot;locking&quot;</span></div><div class='line' id='LC431'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;long&quot;</span> <span class="s">&quot;long-array&quot;</span> <span class="s">&quot;longs&quot;</span> <span class="s">&quot;loop&quot;</span> <span class="s">&quot;macroexpand&quot;</span></div><div class='line' id='LC432'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;macroexpand-1&quot;</span> <span class="s">&quot;make-array&quot;</span> <span class="s">&quot;make-hierarchy&quot;</span> <span class="s">&quot;map&quot;</span> <span class="s">&quot;map?&quot;</span></div><div class='line' id='LC433'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;mapcat&quot;</span> <span class="s">&quot;max&quot;</span> <span class="s">&quot;max-key&quot;</span> <span class="s">&quot;memfn&quot;</span> <span class="s">&quot;memoize&quot;</span></div><div class='line' id='LC434'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;merge&quot;</span> <span class="s">&quot;merge-with&quot;</span> <span class="s">&quot;meta&quot;</span> <span class="s">&quot;method-sig&quot;</span> <span class="s">&quot;methods&quot;</span></div><div class='line' id='LC435'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;min&quot;</span> <span class="s">&quot;min-key&quot;</span> <span class="s">&quot;mod&quot;</span> <span class="s">&quot;name&quot;</span> <span class="s">&quot;namespace&quot;</span></div><div class='line' id='LC436'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;neg?&quot;</span> <span class="s">&quot;newline&quot;</span> <span class="s">&quot;next&quot;</span> <span class="s">&quot;nfirst&quot;</span> <span class="s">&quot;nil?&quot;</span></div><div class='line' id='LC437'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;nnext&quot;</span> <span class="s">&quot;not&quot;</span> <span class="s">&quot;not-any?&quot;</span> <span class="s">&quot;not-empty&quot;</span> <span class="s">&quot;not-every?&quot;</span></div><div class='line' id='LC438'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;not=&quot;</span> <span class="s">&quot;ns&quot;</span> <span class="s">&quot;ns-aliases&quot;</span> <span class="s">&quot;ns-imports&quot;</span> <span class="s">&quot;ns-interns&quot;</span></div><div class='line' id='LC439'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ns-map&quot;</span> <span class="s">&quot;ns-name&quot;</span> <span class="s">&quot;ns-publics&quot;</span> <span class="s">&quot;ns-refers&quot;</span> <span class="s">&quot;ns-resolve&quot;</span></div><div class='line' id='LC440'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ns-unalias&quot;</span> <span class="s">&quot;ns-unmap&quot;</span> <span class="s">&quot;nth&quot;</span> <span class="s">&quot;nthnext&quot;</span> <span class="s">&quot;num&quot;</span></div><div class='line' id='LC441'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;number?&quot;</span> <span class="s">&quot;odd?&quot;</span> <span class="s">&quot;or&quot;</span> <span class="s">&quot;parents&quot;</span> <span class="s">&quot;partial&quot;</span></div><div class='line' id='LC442'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;partition&quot;</span> <span class="s">&quot;pcalls&quot;</span> <span class="s">&quot;peek&quot;</span> <span class="s">&quot;persistent!&quot;</span> <span class="s">&quot;pmap&quot;</span></div><div class='line' id='LC443'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;pop&quot;</span> <span class="s">&quot;pop!&quot;</span> <span class="s">&quot;pop-thread-bindings&quot;</span> <span class="s">&quot;pos?&quot;</span> <span class="s">&quot;pr&quot;</span></div><div class='line' id='LC444'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;pr-str&quot;</span> <span class="s">&quot;prefer-method&quot;</span> <span class="s">&quot;prefers&quot;</span> <span class="s">&quot;primitives-classnames&quot;</span> <span class="s">&quot;print&quot;</span></div><div class='line' id='LC445'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;print-ctor&quot;</span> <span class="s">&quot;print-doc&quot;</span> <span class="s">&quot;print-dup&quot;</span> <span class="s">&quot;print-method&quot;</span> <span class="s">&quot;print-namespace-doc&quot;</span></div><div class='line' id='LC446'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;print-simple&quot;</span> <span class="s">&quot;print-special-doc&quot;</span> <span class="s">&quot;print-str&quot;</span> <span class="s">&quot;printf&quot;</span> <span class="s">&quot;println&quot;</span></div><div class='line' id='LC447'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;println-str&quot;</span> <span class="s">&quot;prn&quot;</span> <span class="s">&quot;prn-str&quot;</span> <span class="s">&quot;promise&quot;</span> <span class="s">&quot;proxy&quot;</span></div><div class='line' id='LC448'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;proxy-call-with-super&quot;</span> <span class="s">&quot;proxy-mappings&quot;</span> <span class="s">&quot;proxy-name&quot;</span> <span class="s">&quot;proxy-super&quot;</span> <span class="s">&quot;push-thread-bindings&quot;</span></div><div class='line' id='LC449'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;pvalues&quot;</span> <span class="s">&quot;quot&quot;</span> <span class="s">&quot;rand&quot;</span> <span class="s">&quot;rand-int&quot;</span> <span class="s">&quot;range&quot;</span></div><div class='line' id='LC450'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ratio?&quot;</span> <span class="s">&quot;rational?&quot;</span> <span class="s">&quot;rationalize&quot;</span> <span class="s">&quot;re-find&quot;</span> <span class="s">&quot;re-groups&quot;</span></div><div class='line' id='LC451'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;re-matcher&quot;</span> <span class="s">&quot;re-matches&quot;</span> <span class="s">&quot;re-pattern&quot;</span> <span class="s">&quot;re-seq&quot;</span> <span class="s">&quot;read&quot;</span></div><div class='line' id='LC452'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;read-line&quot;</span> <span class="s">&quot;read-string&quot;</span> <span class="s">&quot;reify&quot;</span> <span class="s">&quot;reduce&quot;</span> <span class="s">&quot;ref&quot;</span> <span class="s">&quot;ref-history-count&quot;</span></div><div class='line' id='LC453'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ref-max-history&quot;</span> <span class="s">&quot;ref-min-history&quot;</span> <span class="s">&quot;ref-set&quot;</span> <span class="s">&quot;refer&quot;</span> <span class="s">&quot;refer-clojure&quot;</span></div><div class='line' id='LC454'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;release-pending-sends&quot;</span> <span class="s">&quot;rem&quot;</span> <span class="s">&quot;remove&quot;</span> <span class="s">&quot;remove-method&quot;</span> <span class="s">&quot;remove-ns&quot;</span></div><div class='line' id='LC455'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;repeat&quot;</span> <span class="s">&quot;repeatedly&quot;</span> <span class="s">&quot;replace&quot;</span> <span class="s">&quot;replicate&quot;</span></div><div class='line' id='LC456'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;require&quot;</span> <span class="s">&quot;reset!&quot;</span> <span class="s">&quot;reset-meta!&quot;</span> <span class="s">&quot;resolve&quot;</span> <span class="s">&quot;rest&quot;</span></div><div class='line' id='LC457'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;resultset-seq&quot;</span> <span class="s">&quot;reverse&quot;</span> <span class="s">&quot;reversible?&quot;</span> <span class="s">&quot;rseq&quot;</span> <span class="s">&quot;rsubseq&quot;</span></div><div class='line' id='LC458'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;satisfies?&quot;</span> <span class="s">&quot;second&quot;</span> <span class="s">&quot;select-keys&quot;</span> <span class="s">&quot;send&quot;</span> <span class="s">&quot;send-off&quot;</span> <span class="s">&quot;seq&quot;</span></div><div class='line' id='LC459'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;seq?&quot;</span> <span class="s">&quot;seque&quot;</span> <span class="s">&quot;sequence&quot;</span> <span class="s">&quot;sequential?&quot;</span> <span class="s">&quot;set&quot;</span></div><div class='line' id='LC460'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;set-validator!&quot;</span> <span class="s">&quot;set?&quot;</span> <span class="s">&quot;short&quot;</span> <span class="s">&quot;short-array&quot;</span> <span class="s">&quot;shorts&quot;</span></div><div class='line' id='LC461'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;shutdown-agents&quot;</span> <span class="s">&quot;slurp&quot;</span> <span class="s">&quot;some&quot;</span> <span class="s">&quot;sort&quot;</span> <span class="s">&quot;sort-by&quot;</span></div><div class='line' id='LC462'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;sorted-map&quot;</span> <span class="s">&quot;sorted-map-by&quot;</span> <span class="s">&quot;sorted-set&quot;</span> <span class="s">&quot;sorted-set-by&quot;</span> <span class="s">&quot;sorted?&quot;</span></div><div class='line' id='LC463'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;special-form-anchor&quot;</span> <span class="s">&quot;special-symbol?&quot;</span> <span class="s">&quot;split-at&quot;</span> <span class="s">&quot;split-with&quot;</span> <span class="s">&quot;str&quot;</span></div><div class='line' id='LC464'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;stream?&quot;</span> <span class="s">&quot;string?&quot;</span> <span class="s">&quot;struct&quot;</span> <span class="s">&quot;struct-map&quot;</span> <span class="s">&quot;subs&quot;</span></div><div class='line' id='LC465'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;subseq&quot;</span> <span class="s">&quot;subvec&quot;</span> <span class="s">&quot;supers&quot;</span> <span class="s">&quot;swap!&quot;</span> <span class="s">&quot;symbol&quot;</span></div><div class='line' id='LC466'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;symbol?&quot;</span> <span class="s">&quot;sync&quot;</span> <span class="s">&quot;syntax-symbol-anchor&quot;</span> <span class="s">&quot;take&quot;</span> <span class="s">&quot;take-last&quot;</span></div><div class='line' id='LC467'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;take-nth&quot;</span> <span class="s">&quot;take-while&quot;</span> <span class="s">&quot;test&quot;</span> <span class="s">&quot;the-ns&quot;</span> <span class="s">&quot;time&quot;</span></div><div class='line' id='LC468'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;to-array&quot;</span> <span class="s">&quot;to-array-2d&quot;</span> <span class="s">&quot;trampoline&quot;</span> <span class="s">&quot;transient&quot;</span> <span class="s">&quot;tree-seq&quot;</span></div><div class='line' id='LC469'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;true?&quot;</span> <span class="s">&quot;type&quot;</span> <span class="s">&quot;unchecked-add&quot;</span> <span class="s">&quot;unchecked-dec&quot;</span> <span class="s">&quot;unchecked-divide&quot;</span></div><div class='line' id='LC470'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;unchecked-inc&quot;</span> <span class="s">&quot;unchecked-multiply&quot;</span> <span class="s">&quot;unchecked-negate&quot;</span> <span class="s">&quot;unchecked-remainder&quot;</span> <span class="s">&quot;unchecked-subtract&quot;</span></div><div class='line' id='LC471'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;underive&quot;</span> <span class="s">&quot;unquote&quot;</span> <span class="s">&quot;unquote-splicing&quot;</span> <span class="s">&quot;update-in&quot;</span> <span class="s">&quot;update-proxy&quot;</span></div><div class='line' id='LC472'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;use&quot;</span> <span class="s">&quot;val&quot;</span> <span class="s">&quot;vals&quot;</span> <span class="s">&quot;var-get&quot;</span> <span class="s">&quot;var-set&quot;</span></div><div class='line' id='LC473'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;var?&quot;</span> <span class="s">&quot;vary-meta&quot;</span> <span class="s">&quot;vec&quot;</span> <span class="s">&quot;vector&quot;</span> <span class="s">&quot;vector?&quot;</span></div><div class='line' id='LC474'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;when&quot;</span> <span class="s">&quot;when-first&quot;</span> <span class="s">&quot;when-let&quot;</span> <span class="s">&quot;when-not&quot;</span> <span class="s">&quot;while&quot;</span></div><div class='line' id='LC475'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;with-bindings&quot;</span> <span class="s">&quot;with-bindings*&quot;</span> <span class="s">&quot;with-in-str&quot;</span> <span class="s">&quot;with-loading-context&quot;</span> <span class="s">&quot;with-local-vars&quot;</span></div><div class='line' id='LC476'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;with-meta&quot;</span> <span class="s">&quot;with-open&quot;</span> <span class="s">&quot;with-out-str&quot;</span> <span class="s">&quot;with-precision&quot;</span> <span class="s">&quot;xml-seq&quot;</span> <span class="s">&quot;zipmap&quot;</span></div><div class='line' id='LC477'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">)</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC478'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\&gt;&quot;</span><span class="p">)</span></div><div class='line' id='LC479'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1</span> <span class="nv">font-lock-variable-name-face</span><span class="p">)</span></div><div class='line' id='LC480'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (fn name? args ...)</span></div><div class='line' id='LC481'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;(\\(?:clojure.core/\\)?\\(fn\\)[ \t]+&quot;</span></div><div class='line' id='LC482'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Possibly type</span></div><div class='line' id='LC483'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\(?:#?^\\sw+[ \t]*\\)?&quot;</span></div><div class='line' id='LC484'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Possibly name</span></div><div class='line' id='LC485'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\(\\sw+\\)?&quot;</span> <span class="p">)</span></div><div class='line' id='LC486'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="mi">1</span> <span class="nv">font-lock-keyword-face</span><span class="p">)</span></div><div class='line' id='LC487'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="mi">2</span> <span class="nv">font-lock-function-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC488'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;;Other namespaces in clojure.jar</span></div><div class='line' id='LC489'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">concat</span></div><div class='line' id='LC490'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;(\\(?:\.*/\\)?&quot;</span></div><div class='line' id='LC491'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-opt</span></div><div class='line' id='LC492'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="c1">;; clojure.inspector</span></div><div class='line' id='LC493'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;atom?&quot;</span> <span class="s">&quot;collection-tag&quot;</span> <span class="s">&quot;get-child&quot;</span> <span class="s">&quot;get-child-count&quot;</span> <span class="s">&quot;inspect&quot;</span></div><div class='line' id='LC494'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;inspect-table&quot;</span> <span class="s">&quot;inspect-tree&quot;</span> <span class="s">&quot;is-leaf&quot;</span> <span class="s">&quot;list-model&quot;</span> <span class="s">&quot;list-provider&quot;</span></div><div class='line' id='LC495'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.main</span></div><div class='line' id='LC496'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;load-script&quot;</span> <span class="s">&quot;main&quot;</span> <span class="s">&quot;repl&quot;</span> <span class="s">&quot;repl-caught&quot;</span> <span class="s">&quot;repl-exception&quot;</span></div><div class='line' id='LC497'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;repl-prompt&quot;</span> <span class="s">&quot;repl-read&quot;</span> <span class="s">&quot;skip-if-eol&quot;</span> <span class="s">&quot;skip-whitespace&quot;</span> <span class="s">&quot;with-bindings&quot;</span></div><div class='line' id='LC498'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.set</span></div><div class='line' id='LC499'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;difference&quot;</span> <span class="s">&quot;index&quot;</span> <span class="s">&quot;intersection&quot;</span> <span class="s">&quot;join&quot;</span> <span class="s">&quot;map-invert&quot;</span></div><div class='line' id='LC500'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;project&quot;</span> <span class="s">&quot;rename&quot;</span> <span class="s">&quot;rename-keys&quot;</span> <span class="s">&quot;select&quot;</span> <span class="s">&quot;union&quot;</span></div><div class='line' id='LC501'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.stacktrace</span></div><div class='line' id='LC502'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;e&quot;</span> <span class="s">&quot;print-cause-trace&quot;</span> <span class="s">&quot;print-stack-trace&quot;</span> <span class="s">&quot;print-throwable&quot;</span> <span class="s">&quot;print-trace-element&quot;</span></div><div class='line' id='LC503'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.template</span></div><div class='line' id='LC504'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;do-template&quot;</span> <span class="s">&quot;apply-template&quot;</span></div><div class='line' id='LC505'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.test</span></div><div class='line' id='LC506'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*initial-report-counters*&quot;</span> <span class="s">&quot;*load-tests*&quot;</span> <span class="s">&quot;*report-counters*&quot;</span> <span class="s">&quot;*stack-trace-depth*&quot;</span> <span class="s">&quot;*test-out*&quot;</span></div><div class='line' id='LC507'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*testing-contexts*&quot;</span> <span class="s">&quot;*testing-vars*&quot;</span> <span class="s">&quot;are&quot;</span> <span class="s">&quot;assert-any&quot;</span> <span class="s">&quot;assert-expr&quot;</span></div><div class='line' id='LC508'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;assert-predicate&quot;</span> <span class="s">&quot;compose-fixtures&quot;</span> <span class="s">&quot;deftest&quot;</span> <span class="s">&quot;deftest-&quot;</span> <span class="s">&quot;file-position&quot;</span></div><div class='line' id='LC509'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;function?&quot;</span> <span class="s">&quot;get-possibly-unbound-var&quot;</span> <span class="s">&quot;inc-report-counter&quot;</span> <span class="s">&quot;is&quot;</span> <span class="s">&quot;join-fixtures&quot;</span></div><div class='line' id='LC510'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;report&quot;</span> <span class="s">&quot;run-all-tests&quot;</span> <span class="s">&quot;run-tests&quot;</span> <span class="s">&quot;set-test&quot;</span> <span class="s">&quot;successful?&quot;</span></div><div class='line' id='LC511'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;test-all-vars&quot;</span> <span class="s">&quot;test-ns&quot;</span> <span class="s">&quot;test-var&quot;</span> <span class="s">&quot;testing&quot;</span> <span class="s">&quot;testing-contexts-str&quot;</span></div><div class='line' id='LC512'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;testing-vars-str&quot;</span> <span class="s">&quot;try-expr&quot;</span> <span class="s">&quot;use-fixtures&quot;</span> <span class="s">&quot;with-test&quot;</span> <span class="s">&quot;with-test-out&quot;</span></div><div class='line' id='LC513'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.walk</span></div><div class='line' id='LC514'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;keywordize-keys&quot;</span> <span class="s">&quot;macroexpand-all&quot;</span> <span class="s">&quot;postwalk&quot;</span> <span class="s">&quot;postwalk-demo&quot;</span> <span class="s">&quot;postwalk-replace&quot;</span></div><div class='line' id='LC515'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;prewalk&quot;</span> <span class="s">&quot;prewalk-demo&quot;</span> <span class="s">&quot;prewalk-replace&quot;</span> <span class="s">&quot;stringify-keys&quot;</span> <span class="s">&quot;walk&quot;</span></div><div class='line' id='LC516'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.xml</span></div><div class='line' id='LC517'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*current*&quot;</span> <span class="s">&quot;*sb*&quot;</span> <span class="s">&quot;*stack*&quot;</span> <span class="s">&quot;*state*&quot;</span> <span class="s">&quot;attrs&quot;</span></div><div class='line' id='LC518'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;content&quot;</span> <span class="s">&quot;content-handler&quot;</span> <span class="s">&quot;element&quot;</span> <span class="s">&quot;emit&quot;</span> <span class="s">&quot;emit-element&quot;</span></div><div class='line' id='LC519'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; clojure.zip</span></div><div class='line' id='LC520'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;append-child&quot;</span> <span class="s">&quot;branch?&quot;</span> <span class="s">&quot;children&quot;</span> <span class="s">&quot;down&quot;</span> <span class="s">&quot;edit&quot;</span></div><div class='line' id='LC521'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;end?&quot;</span> <span class="s">&quot;insert-child&quot;</span> <span class="s">&quot;insert-left&quot;</span> <span class="s">&quot;insert-right&quot;</span> <span class="s">&quot;left&quot;</span></div><div class='line' id='LC522'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;leftmost&quot;</span> <span class="s">&quot;lefts&quot;</span> <span class="s">&quot;make-node&quot;</span> <span class="s">&quot;next&quot;</span> <span class="s">&quot;node&quot;</span></div><div class='line' id='LC523'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;path&quot;</span> <span class="s">&quot;prev&quot;</span> <span class="s">&quot;remove&quot;</span> <span class="s">&quot;replace&quot;</span> <span class="s">&quot;right&quot;</span></div><div class='line' id='LC524'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;rightmost&quot;</span> <span class="s">&quot;rights&quot;</span> <span class="s">&quot;root&quot;</span> <span class="s">&quot;seq-zip&quot;</span> <span class="s">&quot;up&quot;</span></div><div class='line' id='LC525'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">)</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC526'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\&gt;&quot;</span><span class="p">)</span></div><div class='line' id='LC527'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1</span> <span class="nv">font-lock-type-face</span><span class="p">)</span></div><div class='line' id='LC528'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Constant values (keywords), including as metadata e.g. ^:static</span></div><div class='line' id='LC529'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;\\&lt;^?:\\(\\sw\\|#\\)+\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-constant-face</span><span class="p">)</span></div><div class='line' id='LC530'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Meta type annotation #^Type or ^Type</span></div><div class='line' id='LC531'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;#?^\\sw+&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-type-face</span><span class="p">)</span></div><div class='line' id='LC532'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;\\&lt;io\\!\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-warning-face</span><span class="p">)</span></div><div class='line' id='LC533'><br/></div><div class='line' id='LC534'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;;Java interop highlighting</span></div><div class='line' id='LC535'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;\\&lt;\\.[a-z][a-zA-Z0-9]*\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-preprocessor-face</span><span class="p">)</span> <span class="c1">;; .foo .barBaz .qux01</span></div><div class='line' id='LC536'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;\\&lt;[A-Z][a-zA-Z0-9]*/[a-zA-Z0-9/$_]+\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-preprocessor-face</span><span class="p">)</span> <span class="c1">;; Foo Bar$Baz Qux_</span></div><div class='line' id='LC537'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;\\&lt;[a-zA-Z]+\\.[a-zA-Z0-9._]*[A-Z]+[a-zA-Z0-9/.$]*\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-preprocessor-face</span><span class="p">)</span> <span class="c1">;; Foo/Bar foo.bar.Baz foo.Bar/baz</span></div><div class='line' id='LC538'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;[a-z]*[A-Z]+[a-z][a-zA-Z0-9$]*\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-preprocessor-face</span><span class="p">)</span> <span class="c1">;; fooBar</span></div><div class='line' id='LC539'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;\\&lt;[A-Z][a-zA-Z0-9$]*\\.\\&gt;&quot;</span> <span class="mi">0</span> <span class="nv">font-lock-preprocessor-face</span><span class="p">)))</span> <span class="c1">;; Foo. BarBaz. Qux$Quux. Corge9.</span></div><div class='line' id='LC540'><br/></div><div class='line' id='LC541'><br/></div><div class='line' id='LC542'>&nbsp;&nbsp;<span class="s">&quot;Default expressions to highlight in Clojure mode.&quot;</span><span class="p">)</span></div><div class='line' id='LC543'><br/></div><div class='line' id='LC544'><span class="c1">;; Docstring positions</span></div><div class='line' id='LC545'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defn</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC546'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defn-</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC547'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defmulti</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC548'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defmacro</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC549'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;definline</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC550'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defprotocol</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC551'><br/></div><div class='line' id='LC552'><span class="c1">;; Docstring positions - contrib</span></div><div class='line' id='LC553'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defalias</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC554'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defmacro-</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC555'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defn-memo</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC556'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defnk</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC557'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defonce-</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC558'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defunbound</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC559'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defunbound-</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC560'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defvar</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC561'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defvar-</span> <span class="ss">&#39;clojure-doc-string-elt</span> <span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC562'><br/></div><div class='line' id='LC563'><br/></div><div class='line' id='LC564'><br/></div><div class='line' id='LC565'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-forward-sexp</span> <span class="p">(</span><span class="nf">n</span><span class="p">)</span></div><div class='line' id='LC566'>&nbsp;&nbsp;<span class="s">&quot;Treat record literals like #user.Foo[1] and #user.Foo{:size 1}</span></div><div class='line' id='LC567'><span class="s">as a single sexp so that slime will send them properly. Arguably</span></div><div class='line' id='LC568'><span class="s">this behavior is unintuitive for the user pressing (eg) C-M-f</span></div><div class='line' id='LC569'><span class="s">himself, but since these are single objects I think it&#39;s right.&quot;</span></div><div class='line' id='LC570'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">dir</span> <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">&gt; </span><span class="nv">n</span> <span class="mi">0</span><span class="p">)</span> <span class="mi">1</span> <span class="mi">-1</span><span class="p">))</span></div><div class='line' id='LC571'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp-function</span> <span class="nv">nil</span><span class="p">))</span> <span class="c1">; force the built-in version</span></div><div class='line' id='LC572'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">zerop</span> <span class="nv">n</span><span class="p">))</span></div><div class='line' id='LC573'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span> <span class="nv">dir</span><span class="p">)</span></div><div class='line' id='LC574'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">save-excursion</span> <span class="c1">; move back to see if we&#39;re in a record literal</span></div><div class='line' id='LC575'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">and</span></div><div class='line' id='LC576'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="nv">nil</span></div><div class='line' id='LC577'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">backward-sexp</span><span class="p">)</span> <span class="ss">&#39;t</span><span class="p">)</span></div><div class='line' id='LC578'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="ss">&#39;scan-error</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC579'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;#\\w&quot;</span><span class="p">)))</span></div><div class='line' id='LC580'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span> <span class="nv">dir</span><span class="p">))</span> <span class="c1">; if so, jump over it</span></div><div class='line' id='LC581'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">n</span> <span class="p">(</span><span class="nb">- </span><span class="nv">n</span> <span class="nv">dir</span><span class="p">)))))</span></div><div class='line' id='LC582'><br/></div><div class='line' id='LC583'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-indent-function</span> <span class="p">(</span><span class="nf">indent-point</span> <span class="nv">state</span><span class="p">)</span></div><div class='line' id='LC584'>&nbsp;&nbsp;<span class="s">&quot;This function is the normal value of the variable `lisp-indent-function&#39;.</span></div><div class='line' id='LC585'><span class="s">It is used when indenting a line within a function call, to see if the</span></div><div class='line' id='LC586'><span class="s">called function says anything special about how to indent the line.</span></div><div class='line' id='LC587'><br/></div><div class='line' id='LC588'><span class="s">INDENT-POINT is the position where the user typed TAB, or equivalent.</span></div><div class='line' id='LC589'><span class="s">Point is located at the point to indent under (for default indentation);</span></div><div class='line' id='LC590'><span class="s">STATE is the `parse-partial-sexp&#39; state for that position.</span></div><div class='line' id='LC591'><br/></div><div class='line' id='LC592'><span class="s">If the current line is in a call to a Lisp function</span></div><div class='line' id='LC593'><span class="s">which has a non-nil property `lisp-indent-function&#39;,</span></div><div class='line' id='LC594'><span class="s">that specifies how to do the indentation.  The property value can be</span></div><div class='line' id='LC595'><span class="s">* `defun&#39;, meaning indent `defun&#39;-style;</span></div><div class='line' id='LC596'><span class="s">* an integer N, meaning indent the first N arguments specially</span></div><div class='line' id='LC597'><span class="s">  like ordinary function arguments and then indent any further</span></div><div class='line' id='LC598'><span class="s">  arguments like a body;</span></div><div class='line' id='LC599'><span class="s">* a function to call just as this function was called.</span></div><div class='line' id='LC600'><span class="s">  If that function returns nil, that means it doesn&#39;t specify</span></div><div class='line' id='LC601'><span class="s">  the indentation.</span></div><div class='line' id='LC602'><br/></div><div class='line' id='LC603'><span class="s">This function also returns nil meaning don&#39;t specify the indentation.&quot;</span></div><div class='line' id='LC604'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">normal-indent</span> <span class="p">(</span><span class="nf">current-column</span><span class="p">)))</span></div><div class='line' id='LC605'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="p">(</span><span class="nf">elt</span> <span class="nv">state</span> <span class="mi">1</span><span class="p">)))</span></div><div class='line' id='LC606'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">parse-partial-sexp</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">calculate-lisp-indent-last-sexp</span> <span class="mi">0</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC607'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">elt</span> <span class="nv">state</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC608'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\sw\\|\\s_&quot;</span><span class="p">)))</span></div><div class='line' id='LC609'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; car of form doesn&#39;t seem to be a symbol</span></div><div class='line' id='LC610'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC611'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nb">&gt; </span><span class="p">(</span><span class="nf">save-excursion</span> <span class="p">(</span><span class="nf">forward-line</span> <span class="mi">1</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC612'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">calculate-lisp-indent-last-sexp</span><span class="p">))</span></div><div class='line' id='LC613'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">goto-char</span> <span class="nv">calculate-lisp-indent-last-sexp</span><span class="p">)</span></div><div class='line' id='LC614'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">beginning-of-line</span><span class="p">)</span></div><div class='line' id='LC615'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">parse-partial-sexp</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span></div><div class='line' id='LC616'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">calculate-lisp-indent-last-sexp</span> <span class="mi">0</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC617'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Indent under the list or under the first sexp on the same</span></div><div class='line' id='LC618'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; line as calculate-lisp-indent-last-sexp.  Note that first</span></div><div class='line' id='LC619'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; thing on that line has to be complete sexp since we are</span></div><div class='line' id='LC620'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; inside the innermost containing sexp.</span></div><div class='line' id='LC621'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">backward-prefix-chars</span><span class="p">)</span></div><div class='line' id='LC622'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">eq</span> <span class="p">(</span><span class="nf">char-after</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span> <span class="nv">?</span><span class="err">\[</span><span class="p">)</span></div><div class='line' id='LC623'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">eq</span> <span class="p">(</span><span class="nf">char-after</span> <span class="p">(</span><span class="nf">elt</span> <span class="nv">state</span> <span class="mi">1</span><span class="p">))</span> <span class="nv">?</span><span class="err">\</span><span class="p">())</span></div><div class='line' id='LC624'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">+ </span><span class="p">(</span><span class="nf">current-column</span><span class="p">)</span> <span class="mi">2</span><span class="p">)</span> <span class="c1">;; this is probably inside a defn</span></div><div class='line' id='LC625'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">current-column</span><span class="p">)))</span></div><div class='line' id='LC626'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">function</span> <span class="p">(</span><span class="nf">buffer-substring</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span></div><div class='line' id='LC627'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">forward-sexp</span> <span class="mi">1</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">))))</span></div><div class='line' id='LC628'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">open-paren</span> <span class="p">(</span><span class="nf">elt</span> <span class="nv">state</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC629'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">method</span><span class="p">)</span></div><div class='line' id='LC630'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">method</span> <span class="p">(</span><span class="nf">get</span> <span class="p">(</span><span class="nf">intern-soft</span> <span class="nv">function</span><span class="p">)</span> <span class="ss">&#39;clojure-indent-function</span><span class="p">))</span></div><div class='line' id='LC631'><br/></div><div class='line' id='LC632'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">cond </span><span class="p">((</span><span class="nb">member </span><span class="p">(</span><span class="nf">char-after</span> <span class="nv">open-paren</span><span class="p">)</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">?</span><span class="err">\[</span> <span class="nv">?</span><span class="err">\{</span><span class="p">))</span></div><div class='line' id='LC633'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">open-paren</span><span class="p">)</span></div><div class='line' id='LC634'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="p">(</span><span class="nf">current-column</span><span class="p">)))</span></div><div class='line' id='LC635'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="k">or </span><span class="p">(</span><span class="nf">eq</span> <span class="nv">method</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC636'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">null</span> <span class="nv">method</span><span class="p">)</span></div><div class='line' id='LC637'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&gt; </span><span class="p">(</span><span class="nb">length </span><span class="nv">function</span><span class="p">)</span> <span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC638'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">string-match</span> <span class="s">&quot;\\`\\(?:\\S +/\\)?def\\|with-&quot;</span></div><div class='line' id='LC639'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">function</span><span class="p">)))</span></div><div class='line' id='LC640'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">lisp-indent-defform</span> <span class="nv">state</span> <span class="nv">indent-point</span><span class="p">))</span></div><div class='line' id='LC641'><br/></div><div class='line' id='LC642'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">integerp</span> <span class="nv">method</span><span class="p">)</span></div><div class='line' id='LC643'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">lisp-indent-specform</span> <span class="nv">method</span> <span class="nv">state</span></div><div class='line' id='LC644'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">indent-point</span> <span class="nv">normal-indent</span><span class="p">))</span></div><div class='line' id='LC645'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">method</span></div><div class='line' id='LC646'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">method</span> <span class="nv">indent-point</span> <span class="nv">state</span><span class="p">))</span></div><div class='line' id='LC647'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">clojure-mode-use-backtracking-indent</span></div><div class='line' id='LC648'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">clojure-backtracking-indent</span></div><div class='line' id='LC649'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">indent-point</span> <span class="nv">state</span> <span class="nv">normal-indent</span><span class="p">)))))))</span></div><div class='line' id='LC650'><br/></div><div class='line' id='LC651'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-backtracking-indent</span> <span class="p">(</span><span class="nf">indent-point</span> <span class="nv">state</span> <span class="nv">normal-indent</span><span class="p">)</span></div><div class='line' id='LC652'>&nbsp;&nbsp;<span class="s">&quot;Experimental backtracking support. Will upwards in an sexp to</span></div><div class='line' id='LC653'><span class="s">check for contextual indenting.&quot;</span></div><div class='line' id='LC654'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">(</span><span class="nf">indent</span> <span class="p">(</span><span class="nf">path</span><span class="p">)</span> <span class="p">(</span><span class="nf">depth</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC655'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">elt</span> <span class="nv">state</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC656'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">not </span><span class="nv">indent</span><span class="p">)</span></div><div class='line' id='LC657'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&lt; </span><span class="nv">depth</span> <span class="nv">clojure-max-backtracking</span><span class="p">))</span></div><div class='line' id='LC658'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">containing-sexp</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC659'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">parse-partial-sexp</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="nv">containing-sexp</span><span class="p">)</span> <span class="nv">indent-point</span> <span class="mi">1</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC660'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\sw\\|\\s_&quot;</span><span class="p">)</span></div><div class='line' id='LC661'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">start</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC662'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fn</span> <span class="p">(</span><span class="nf">buffer-substring</span> <span class="nv">start</span> <span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">forward-sexp</span> <span class="mi">1</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">))))</span></div><div class='line' id='LC663'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">meth</span> <span class="p">(</span><span class="nf">get</span> <span class="p">(</span><span class="nf">intern-soft</span> <span class="nv">fn</span><span class="p">)</span> <span class="ss">&#39;clojure-backtracking-indent</span><span class="p">)))</span></div><div class='line' id='LC664'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">n</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC665'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">&lt; </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">indent-point</span><span class="p">)</span></div><div class='line' id='LC666'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="p">()</span></div><div class='line' id='LC667'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC668'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC669'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="nb">&lt; </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">indent-point</span><span class="p">)</span></div><div class='line' id='LC670'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">parse-partial-sexp</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">indent-point</span> <span class="mi">1</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC671'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">incf</span> <span class="nv">n</span><span class="p">)</span></div><div class='line' id='LC672'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-sexp</span> <span class="mi">1</span><span class="p">)))</span></div><div class='line' id='LC673'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="nv">nil</span><span class="p">)))</span></div><div class='line' id='LC674'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">push</span> <span class="nv">n</span> <span class="nv">path</span><span class="p">))</span></div><div class='line' id='LC675'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">meth</span></div><div class='line' id='LC676'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">def</span> <span class="nv">meth</span><span class="p">))</span></div><div class='line' id='LC677'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dolist</span> <span class="p">(</span><span class="nf">p</span> <span class="nv">path</span><span class="p">)</span></div><div class='line' id='LC678'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">listp</span> <span class="nv">def</span><span class="p">)</span></div><div class='line' id='LC679'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&lt; </span><span class="nv">p</span> <span class="p">(</span><span class="nb">length </span><span class="nv">def</span><span class="p">)))</span></div><div class='line' id='LC680'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">def</span> <span class="p">(</span><span class="nf">nth</span> <span class="nv">p</span> <span class="nv">def</span><span class="p">))</span></div><div class='line' id='LC681'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">listp</span> <span class="nv">def</span><span class="p">)</span></div><div class='line' id='LC682'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">def</span> <span class="p">(</span><span class="nb">car </span><span class="p">(</span><span class="nf">last</span> <span class="nv">def</span><span class="p">)))</span></div><div class='line' id='LC683'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">def</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC684'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">elt</span> <span class="nv">state</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC685'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">def</span></div><div class='line' id='LC686'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">indent</span> <span class="p">(</span><span class="nb">+ </span><span class="p">(</span><span class="nf">current-column</span><span class="p">)</span> <span class="nv">def</span><span class="p">)))))))</span></div><div class='line' id='LC687'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">containing-sexp</span><span class="p">)</span></div><div class='line' id='LC688'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">condition-case</span> <span class="p">()</span></div><div class='line' id='LC689'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC690'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">backward-up-list</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC691'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">incf</span> <span class="nv">depth</span><span class="p">))</span></div><div class='line' id='LC692'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">depth</span> <span class="nv">clojure-max-backtracking</span><span class="p">)))))</span></div><div class='line' id='LC693'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">indent</span><span class="p">))</span></div><div class='line' id='LC694'><br/></div><div class='line' id='LC695'><span class="c1">;; clojure backtracking indent is experimental and the format for these</span></div><div class='line' id='LC696'><span class="c1">;; entries are subject to change</span></div><div class='line' id='LC697'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;implement</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC698'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;letfn</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">((</span><span class="mi">2</span><span class="p">)</span> <span class="mi">2</span><span class="p">))</span></div><div class='line' id='LC699'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;proxy</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC700'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;reify</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">((</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC701'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;deftype</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC702'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defrecord</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC703'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;defprotocol</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC704'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;extend-type</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC705'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;extend-protocol</span> <span class="ss">&#39;clojure-backtracking-indent</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">4</span> <span class="p">(</span><span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC706'><br/></div><div class='line' id='LC707'><span class="p">(</span><span class="nf">defun</span> <span class="nv">put-clojure-indent</span> <span class="p">(</span><span class="nf">sym</span> <span class="nv">indent</span><span class="p">)</span></div><div class='line' id='LC708'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">put</span> <span class="nv">sym</span> <span class="ss">&#39;clojure-indent-function</span> <span class="nv">indent</span><span class="p">))</span></div><div class='line' id='LC709'><br/></div><div class='line' id='LC710'><span class="p">(</span><span class="nf">defmacro</span> <span class="nv">define-clojure-indent</span> <span class="p">(</span><span class="nf">&amp;rest</span> <span class="nv">kvs</span><span class="p">)</span></div><div class='line' id='LC711'>&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC712'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">,@</span><span class="p">(</span><span class="nf">mapcar</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">x</span><span class="p">)</span> <span class="o">`</span><span class="p">(</span><span class="nf">put-clojure-indent</span></div><div class='line' id='LC713'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">quote </span><span class="o">,</span><span class="p">(</span><span class="nf">first</span> <span class="nv">x</span><span class="p">))</span> <span class="o">,</span><span class="p">(</span><span class="nf">second</span> <span class="nv">x</span><span class="p">)))</span> <span class="nv">kvs</span><span class="p">)))</span></div><div class='line' id='LC714'><br/></div><div class='line' id='LC715'><span class="p">(</span><span class="nf">defun</span> <span class="nv">add-custom-clojure-indents</span> <span class="p">(</span><span class="nf">name</span> <span class="nv">value</span><span class="p">)</span></div><div class='line' id='LC716'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">clojure-defun-indents</span> <span class="nv">value</span><span class="p">)</span></div><div class='line' id='LC717'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">mapcar</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">x</span><span class="p">)</span></div><div class='line' id='LC718'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">put-clojure-indent</span> <span class="nv">x</span> <span class="ss">&#39;defun</span><span class="p">))</span></div><div class='line' id='LC719'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">value</span><span class="p">))</span></div><div class='line' id='LC720'><br/></div><div class='line' id='LC721'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">clojure-defun-indents</span> <span class="nv">nil</span></div><div class='line' id='LC722'>&nbsp;&nbsp;<span class="s">&quot;List of symbols to give defun-style indentation to in Clojure</span></div><div class='line' id='LC723'><span class="s">code, in addition to those that are built-in. You can use this to</span></div><div class='line' id='LC724'><span class="s">get emacs to indent your own macros the same as it does the</span></div><div class='line' id='LC725'><span class="s">built-ins like with-open. To set manually from lisp code,</span></div><div class='line' id='LC726'><span class="s">use (put-clojure-indent &#39;some-symbol &#39;defun).&quot;</span></div><div class='line' id='LC727'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nv">symbol</span><span class="p">)</span></div><div class='line' id='LC728'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;clojure-mode</span></div><div class='line' id='LC729'>&nbsp;&nbsp;<span class="nv">:set</span> <span class="ss">&#39;add-custom-clojure-indents</span><span class="p">)</span></div><div class='line' id='LC730'><br/></div><div class='line' id='LC731'><span class="p">(</span><span class="nf">define-clojure-indent</span></div><div class='line' id='LC732'>&nbsp;&nbsp;<span class="c1">;; built-ins</span></div><div class='line' id='LC733'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">ns</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC734'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">fn</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC735'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">def</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC736'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">defn</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC737'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">bound-fn</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC738'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC739'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">if-not</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC740'>&nbsp;&nbsp;<span class="p">(</span><span class="k">case </span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC741'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">condp</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC742'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC743'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC744'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when-not</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC745'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when-first</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC746'>&nbsp;&nbsp;<span class="p">(</span><span class="k">do </span><span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC747'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">future</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC748'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">comment</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC749'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">doto</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC750'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">locking</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC751'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">proxy</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC752'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-open</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC753'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-precision</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC754'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-local-vars</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC755'><br/></div><div class='line' id='LC756'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">reify</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC757'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">deftype</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC758'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">defrecord</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC759'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">defprotocol</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC760'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">extend</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC761'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">extend-protocol</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC762'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">extend-type</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC763'><br/></div><div class='line' id='LC764'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">try</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC765'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">catch</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC766'><br/></div><div class='line' id='LC767'>&nbsp;&nbsp;<span class="c1">;; binding forms</span></div><div class='line' id='LC768'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC769'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">letfn</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC770'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">binding</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC771'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC772'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">for</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC773'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">doseq</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC774'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">dotimes</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC775'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when-let</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC776'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">if-let</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC777'><br/></div><div class='line' id='LC778'>&nbsp;&nbsp;<span class="c1">;; data structures</span></div><div class='line' id='LC779'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">defstruct</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC780'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">struct-map</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC781'>&nbsp;&nbsp;<span class="p">(</span><span class="nb">assoc </span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC782'><br/></div><div class='line' id='LC783'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">defmethod</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC784'><br/></div><div class='line' id='LC785'>&nbsp;&nbsp;<span class="c1">;; clojure.test</span></div><div class='line' id='LC786'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">testing</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC787'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">deftest</span> <span class="ss">&#39;defun</span><span class="p">)</span></div><div class='line' id='LC788'><br/></div><div class='line' id='LC789'>&nbsp;&nbsp;<span class="c1">;; contrib</span></div><div class='line' id='LC790'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">handler-case</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC791'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">handle</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC792'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">dotrace</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC793'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">deftrace</span> <span class="ss">&#39;defun</span><span class="p">))</span></div><div class='line' id='LC794'><br/></div><div class='line' id='LC795'><br/></div><div class='line' id='LC796'><br/></div><div class='line' id='LC797'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">clojure-namespace-name-regex</span></div><div class='line' id='LC798'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">rx</span> <span class="nv">line-start</span></div><div class='line' id='LC799'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;(&quot;</span></div><div class='line' id='LC800'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-one</span> <span class="p">(</span><span class="nf">group</span> <span class="p">(</span><span class="nf">regexp</span> <span class="s">&quot;clojure.core/&quot;</span><span class="p">)))</span></div><div class='line' id='LC801'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-one</span> <span class="p">(</span><span class="nf">submatch</span> <span class="s">&quot;in-&quot;</span><span class="p">))</span></div><div class='line' id='LC802'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ns&quot;</span></div><div class='line' id='LC803'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-one</span> <span class="s">&quot;+&quot;</span><span class="p">)</span></div><div class='line' id='LC804'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">one-or-more</span> <span class="p">(</span><span class="nf">any</span> <span class="nv">whitespace</span> <span class="s">&quot;\n&quot;</span><span class="p">))</span></div><div class='line' id='LC805'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-more</span> <span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">submatch</span> <span class="p">(</span><span class="nf">zero-or-one</span> <span class="s">&quot;#&quot;</span><span class="p">)</span></div><div class='line' id='LC806'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;^{&quot;</span></div><div class='line' id='LC807'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-more</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">any</span> <span class="s">&quot;}&quot;</span><span class="p">)))</span></div><div class='line' id='LC808'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;}&quot;</span><span class="p">)</span></div><div class='line' id='LC809'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-more</span> <span class="s">&quot;^:&quot;</span></div><div class='line' id='LC810'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">one-or-more</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">any</span> <span class="nv">whitespace</span><span class="p">)))))</span></div><div class='line' id='LC811'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">one-or-more</span> <span class="p">(</span><span class="nf">any</span> <span class="nv">whitespace</span> <span class="s">&quot;\n&quot;</span><span class="p">)))</span></div><div class='line' id='LC812'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; why is this here? oh (in-ns &#39;foo) or (ns+ :user)</span></div><div class='line' id='LC813'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zero-or-one</span> <span class="p">(</span><span class="nf">any</span> <span class="s">&quot;:&#39;&quot;</span><span class="p">))</span></div><div class='line' id='LC814'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">group</span> <span class="p">(</span><span class="nf">one-or-more</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">any</span> <span class="s">&quot;()\&quot;&quot;</span> <span class="nv">whitespace</span><span class="p">)))</span> <span class="nv">word-end</span><span class="p">)))</span></div><div class='line' id='LC815'><br/></div><div class='line' id='LC816'><span class="c1">;; for testing clojure-namespace-name-regex, you can evaluate this code and make</span></div><div class='line' id='LC817'><span class="c1">;; sure foo (or whatever the namespace name is) shows up in results. some of</span></div><div class='line' id='LC818'><span class="c1">;; these currently fail.</span></div><div class='line' id='LC819'><span class="c1">;; (mapcar (lambda (s) (let ((n (string-match clojure-namespace-name-regex s)))</span></div><div class='line' id='LC820'><span class="c1">;;                       (if n (match-string 4 s))))</span></div><div class='line' id='LC821'><span class="c1">;;         &#39;(&quot;(ns foo)&quot;</span></div><div class='line' id='LC822'><span class="c1">;;           &quot;(ns</span></div><div class='line' id='LC823'><span class="c1">;; foo)&quot;</span></div><div class='line' id='LC824'><span class="c1">;;           &quot;(ns foo.baz)&quot;</span></div><div class='line' id='LC825'><span class="c1">;;           &quot;(ns ^:bar foo)&quot;</span></div><div class='line' id='LC826'><span class="c1">;;           &quot;(ns ^:bar ^:baz foo)&quot;</span></div><div class='line' id='LC827'><span class="c1">;;           &quot;(ns ^{:bar true} foo)&quot;</span></div><div class='line' id='LC828'><span class="c1">;;           &quot;(ns #^{:bar true} foo)&quot;</span></div><div class='line' id='LC829'><span class="c1">;;           &quot;(ns #^{:fail {}} foo)&quot;</span></div><div class='line' id='LC830'><span class="c1">;;           &quot;(ns ^{:fail2 {}} foo.baz)&quot;</span></div><div class='line' id='LC831'><span class="c1">;;           &quot;(ns ^{} foo)&quot;</span></div><div class='line' id='LC832'><span class="c1">;;           &quot;(ns ^{:skip-wiki true}</span></div><div class='line' id='LC833'><span class="c1">;;   aleph.netty</span></div><div class='line' id='LC834'><span class="c1">;; &quot;</span></div><div class='line' id='LC835'><span class="c1">;;           &quot;(ns</span></div><div class='line' id='LC836'><span class="c1">;;  foo)&quot;</span></div><div class='line' id='LC837'><span class="c1">;;     &quot;foo&quot;))</span></div><div class='line' id='LC838'><br/></div><div class='line' id='LC839'><br/></div><div class='line' id='LC840'><br/></div><div class='line' id='LC841'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-insert-ns-form</span> <span class="p">()</span></div><div class='line' id='LC842'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC843'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">))</span></div><div class='line' id='LC844'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">rel</span> <span class="p">(</span><span class="nb">car </span><span class="p">(</span><span class="nf">last</span> <span class="p">(</span><span class="nf">split-string</span> <span class="nv">buffer-file-name</span> <span class="s">&quot;src/\\|test/&quot;</span><span class="p">))))</span></div><div class='line' id='LC845'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">relative</span> <span class="p">(</span><span class="nb">car </span><span class="p">(</span><span class="nf">split-string</span> <span class="nv">rel</span> <span class="s">&quot;\\.clj&quot;</span><span class="p">)))</span></div><div class='line' id='LC846'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">segments</span> <span class="p">(</span><span class="nf">split-string</span> <span class="nv">relative</span> <span class="s">&quot;/&quot;</span><span class="p">)))</span></div><div class='line' id='LC847'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="p">(</span><span class="nf">format</span> <span class="s">&quot;(ns %s)&quot;</span> <span class="p">(</span><span class="nf">mapconcat</span> <span class="o">#</span><span class="ss">&#39;identity</span> <span class="nv">segments</span> <span class="s">&quot;.&quot;</span><span class="p">)))))</span></div><div class='line' id='LC848'><br/></div><div class='line' id='LC849'><br/></div><div class='line' id='LC850'><span class="c1">;;; Slime help</span></div><div class='line' id='LC851'><br/></div><div class='line' id='LC852'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">clojure-project-root-file</span> <span class="s">&quot;project.clj&quot;</span><span class="p">)</span></div><div class='line' id='LC853'><br/></div><div class='line' id='LC854'><span class="c1">;; Pipe to $SHELL to work around mackosecks GUI Emacs $PATH issues.</span></div><div class='line' id='LC855'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">clojure-swank-command</span> </div><div class='line' id='LC856'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">locate-file</span> <span class="s">&quot;lein&quot;</span> <span class="nv">exec-path</span><span class="p">)</span> <span class="p">(</span><span class="nf">locate-file</span> <span class="s">&quot;lein.bat&quot;</span> <span class="nv">exec-path</span><span class="p">))</span></div><div class='line' id='LC857'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;lein jack-in %s&quot;</span></div><div class='line' id='LC858'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;echo \&quot;lein jack-in %s\&quot; | $SHELL -l&quot;</span><span class="p">)</span></div><div class='line' id='LC859'>&nbsp;&nbsp;<span class="s">&quot;The command used to start swank via clojure-jack-in.&quot;</span></div><div class='line' id='LC860'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;string</span></div><div class='line' id='LC861'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC862'><br/></div><div class='line' id='LC863'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-jack-in-sentinel</span> <span class="p">(</span><span class="nf">process</span> <span class="nv">event</span><span class="p">)</span></div><div class='line' id='LC864'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">debug-on-error</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC865'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="s">&quot;Could not start swank server: %s&quot;</span></div><div class='line' id='LC866'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">process-buffer</span> <span class="nv">process</span><span class="p">)</span></div><div class='line' id='LC867'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">buffer-substring</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">)</span> <span class="p">(</span><span class="nf">point-max</span><span class="p">))))))</span></div><div class='line' id='LC868'><br/></div><div class='line' id='LC869'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-eval-bootstrap-region</span> <span class="p">(</span><span class="nf">process</span><span class="p">)</span></div><div class='line' id='LC870'>&nbsp;&nbsp;<span class="s">&quot;Eval only the elisp in between the markers.&quot;</span></div><div class='line' id='LC871'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">process-buffer</span> <span class="nv">process</span><span class="p">)</span></div><div class='line' id='LC872'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC873'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC874'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">search-forward</span> <span class="s">&quot;;;; Bootstrapping bundled version of SLIME&quot;</span><span class="p">)</span></div><div class='line' id='LC875'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="k">begin </span><span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC876'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">search-forward</span> <span class="s">&quot;;;; Done bootstrapping.&quot;</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC877'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; fall back to possibly-ambiguous string if above isn&#39;t found</span></div><div class='line' id='LC878'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">search-forward</span> <span class="s">&quot;(run-hooks &#39;slime-load-hook) ; on port&quot;</span><span class="p">))</span></div><div class='line' id='LC879'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">eval-region</span> <span class="k">begin </span><span class="p">(</span><span class="nf">point</span><span class="p">))))))</span></div><div class='line' id='LC880'><br/></div><div class='line' id='LC881'><span class="c1">;;;###autoload</span></div><div class='line' id='LC882'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-jack-in</span> <span class="p">()</span></div><div class='line' id='LC883'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC884'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">slime-net-coding-system</span> <span class="ss">&#39;utf-8-unix</span><span class="p">)</span></div><div class='line' id='LC885'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">lexical-let</span> <span class="p">((</span><span class="nf">port</span> <span class="p">(</span><span class="nb">- </span><span class="mi">65535</span> <span class="p">(</span><span class="nf">mod</span> <span class="p">(</span><span class="nb">caddr </span><span class="p">(</span><span class="nf">current-time</span><span class="p">))</span> <span class="mi">4096</span><span class="p">)))</span></div><div class='line' id='LC886'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dir</span> <span class="nv">default-directory</span><span class="p">))</span></div><div class='line' id='LC887'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">functionp</span> <span class="ss">&#39;slime-disconnect</span><span class="p">)</span> <span class="p">(</span><span class="nf">slime-current-connection</span><span class="p">))</span></div><div class='line' id='LC888'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">slime-disconnect</span><span class="p">))</span></div><div class='line' id='LC889'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">get-buffer</span> <span class="s">&quot;*swank*&quot;</span><span class="p">)</span></div><div class='line' id='LC890'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">kill-buffer</span> <span class="s">&quot;*swank*&quot;</span><span class="p">))</span></div><div class='line' id='LC891'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">swank-cmd</span> <span class="p">(</span><span class="nf">format</span> <span class="nv">clojure-swank-command</span> <span class="nv">port</span><span class="p">))</span></div><div class='line' id='LC892'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">proc</span> <span class="p">(</span><span class="nf">start-process-shell-command</span> <span class="s">&quot;swank&quot;</span> <span class="s">&quot;*swank*&quot;</span> <span class="nv">swank-cmd</span><span class="p">)))</span></div><div class='line' id='LC893'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-process-sentinel</span> <span class="p">(</span><span class="nf">get-buffer-process</span> <span class="s">&quot;*swank*&quot;</span><span class="p">)</span></div><div class='line' id='LC894'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-jack-in-sentinel</span><span class="p">)</span></div><div class='line' id='LC895'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-process-filter</span> <span class="p">(</span><span class="nf">get-buffer-process</span> <span class="s">&quot;*swank*&quot;</span><span class="p">)</span></div><div class='line' id='LC896'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">process</span> <span class="nv">output</span><span class="p">)</span></div><div class='line' id='LC897'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">process-buffer</span> <span class="nv">process</span><span class="p">)</span></div><div class='line' id='LC898'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="nv">output</span><span class="p">))</span></div><div class='line' id='LC899'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">string-match</span> <span class="s">&quot;proceed to jack in&quot;</span> <span class="nv">output</span><span class="p">)</span></div><div class='line' id='LC900'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">clojure-eval-bootstrap-region</span> <span class="nv">process</span><span class="p">)</span></div><div class='line' id='LC901'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">slime-connect</span> <span class="s">&quot;localhost&quot;</span> <span class="nv">port</span><span class="p">)</span></div><div class='line' id='LC902'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">slime-output-buffer</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC903'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">default-directory</span> <span class="nv">dir</span><span class="p">))</span></div><div class='line' id='LC904'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-process-sentinel</span> <span class="nv">process</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC905'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-process-filter</span> <span class="nv">process</span> <span class="nv">nil</span><span class="p">))))))</span></div><div class='line' id='LC906'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Starting swank server...&quot;</span><span class="p">))</span></div><div class='line' id='LC907'><br/></div><div class='line' id='LC908'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-find-ns</span> <span class="p">()</span></div><div class='line' id='LC909'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">regexp</span> <span class="nv">clojure-namespace-name-regex</span><span class="p">))</span></div><div class='line' id='LC910'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC911'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">re-search-backward</span> <span class="nv">regexp</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC912'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">re-search-forward</span> <span class="nv">regexp</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC913'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">match-string-no-properties</span> <span class="mi">4</span><span class="p">)))))</span></div><div class='line' id='LC914'><br/></div><div class='line' id='LC915'><span class="p">(</span><span class="nf">defalias</span> <span class="ss">&#39;clojure-find-package</span> <span class="ss">&#39;clojure-find-ns</span><span class="p">)</span></div><div class='line' id='LC916'><br/></div><div class='line' id='LC917'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-enable-slime</span> <span class="p">()</span></div><div class='line' id='LC918'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">slime-mode</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC919'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;slime-find-buffer-package-function</span><span class="p">)</span></div><div class='line' id='LC920'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;clojure-find-ns</span><span class="p">))</span></div><div class='line' id='LC921'><br/></div><div class='line' id='LC922'><span class="c1">;;;###autoload</span></div><div class='line' id='LC923'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-enable-slime-on-existing-buffers</span> <span class="p">()</span></div><div class='line' id='LC924'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC925'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-hook</span> <span class="ss">&#39;clojure-mode-hook</span> <span class="ss">&#39;clojure-enable-slime</span><span class="p">)</span></div><div class='line' id='LC926'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-window-excursion</span></div><div class='line' id='LC927'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dolist</span> <span class="p">(</span><span class="nf">buffer</span> <span class="p">(</span><span class="nf">buffer-list</span><span class="p">))</span></div><div class='line' id='LC928'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="nv">buffer</span></div><div class='line' id='LC929'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">eq</span> <span class="nv">major-mode</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC930'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">clojure-enable-slime</span><span class="p">))))))</span></div><div class='line' id='LC931'><br/></div><div class='line' id='LC932'><span class="c1">;; Test navigation:</span></div><div class='line' id='LC933'><br/></div><div class='line' id='LC934'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-underscores-for-hyphens</span> <span class="p">(</span><span class="nf">namespace</span><span class="p">)</span></div><div class='line' id='LC935'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">replace-regexp-in-string</span> <span class="s">&quot;-&quot;</span> <span class="s">&quot;_&quot;</span> <span class="nv">namespace</span><span class="p">))</span></div><div class='line' id='LC936'><br/></div><div class='line' id='LC937'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-test-for</span> <span class="p">(</span><span class="nf">namespace</span><span class="p">)</span></div><div class='line' id='LC938'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">namespace</span> <span class="p">(</span><span class="nf">clojure-underscores-for-hyphens</span> <span class="nv">namespace</span><span class="p">))</span></div><div class='line' id='LC939'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">segments</span> <span class="p">(</span><span class="nf">split-string</span> <span class="nv">namespace</span> <span class="s">&quot;\\.&quot;</span><span class="p">))</span></div><div class='line' id='LC940'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">before</span> <span class="p">(</span><span class="nf">subseq</span> <span class="nv">segments</span> <span class="mi">0</span> <span class="nv">clojure-test-ns-segment-position</span><span class="p">))</span></div><div class='line' id='LC941'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">after</span> <span class="p">(</span><span class="nf">subseq</span> <span class="nv">segments</span> <span class="nv">clojure-test-ns-segment-position</span><span class="p">))</span></div><div class='line' id='LC942'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">test-segments</span> <span class="p">(</span><span class="nb">append </span><span class="nv">before</span> <span class="p">(</span><span class="nb">list </span><span class="s">&quot;test&quot;</span><span class="p">)</span> <span class="nv">after</span><span class="p">)))</span></div><div class='line' id='LC943'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">mapconcat</span> <span class="ss">&#39;identity</span> <span class="nv">test-segments</span> <span class="s">&quot;/&quot;</span><span class="p">)))</span></div><div class='line' id='LC944'><br/></div><div class='line' id='LC945'><span class="p">(</span><span class="nf">defun</span> <span class="nv">clojure-jump-to-test</span> <span class="p">()</span></div><div class='line' id='LC946'>&nbsp;&nbsp;<span class="s">&quot;Jump from implementation file to test.&quot;</span></div><div class='line' id='LC947'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC948'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">find-file</span> <span class="p">(</span><span class="nf">format</span> <span class="s">&quot;%s/test/%s.clj&quot;</span></div><div class='line' id='LC949'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">locate-dominating-file</span> <span class="nv">buffer-file-name</span> <span class="s">&quot;src/&quot;</span><span class="p">)</span></div><div class='line' id='LC950'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">clojure-test-for</span> <span class="p">(</span><span class="nf">clojure-find-ns</span><span class="p">)))))</span></div><div class='line' id='LC951'><br/></div><div class='line' id='LC952'><span class="c1">;;;###autoload</span></div><div class='line' id='LC953'><span class="p">(</span><span class="nf">add-hook</span> <span class="ss">&#39;slime-connected-hook</span> <span class="ss">&#39;clojure-enable-slime-on-existing-buffers</span><span class="p">)</span></div><div class='line' id='LC954'><br/></div><div class='line' id='LC955'><br/></div><div class='line' id='LC956'><br/></div><div class='line' id='LC957'><span class="c1">;;;###autoload</span></div><div class='line' id='LC958'><span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;auto-mode-alist</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;\\.clj$&quot;</span> <span class="o">.</span> <span class="nv">clojure-mode</span><span class="p">))</span></div><div class='line' id='LC959'><span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;interpreter-mode-alist</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;jark&quot;</span> <span class="o">.</span> <span class="nv">clojure-mode</span><span class="p">))</span></div><div class='line' id='LC960'><span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;interpreter-mode-alist</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;cake&quot;</span> <span class="o">.</span> <span class="nv">clojure-mode</span><span class="p">))</span></div><div class='line' id='LC961'><br/></div><div class='line' id='LC962'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;clojure-mode</span><span class="p">)</span></div><div class='line' id='LC963'><span class="c1">;;; clojure-mode.el ends here</span></div><div class='line' id='LC964'><br/></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>

  </div>

<div class="frame frame-loading" style="display:none;" data-tree-list-url="/technomancy/clojure-mode/tree-list/4fbb25d7089c911c0f07897fa5c1445b196c6425" data-blob-url-prefix="/technomancy/clojure-mode/blob/4fbb25d7089c911c0f07897fa5c1445b196c6425">
  <img src="https://a248.e.akamai.net/assets.github.com/images/modules/ajax/big_spinner_336699.gif?1315928456" height="32" width="32">
</div>

    </div>

    </div>

    <!-- footer -->
    <div id="footer" >
      
  <div class="upper_footer">
     <div class="site" class="clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="https://github.com/training">Training</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://mobile.github.com/">Issues for iPhone</a></li>
         <li><a href="https://gist.github.com">Gist: Code Snippets</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Extras</h4>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="site" class="clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2011 <span id="_rrt" title="0.29266s from fe11.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

      <div class="sponsor">
        <a href="http://www.rackspace.com" class="logo">
          <img alt="Dedicated Server" height="36" src="https://a248.e.akamai.net/assets.github.com/images/modules/footer/rackspace_logo.png?v2" width="38" />
        </a>
        Powered by the <a href="http://www.rackspace.com ">Dedicated
        Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
        Computing</a> of Rackspace Hosting<span>&reg;</span>
      </div>
  </div><!-- /.site -->
</div><!-- /.lower_footer -->

    </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style=&#39;display:none&#39;>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style=&#39;display:none&#39;>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style=&#39;display:none&#39;>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column middle">
        <dl class="keyboard-mappings">
          <dt>I</dt>
          <dd>Mark selection as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>U</dt>
          <dd>Mark selection as unread</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>e</dt>
          <dd>Close selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Remove selection from view</dd>
        </dl>
      </div><!-- /.column.middle -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style=&#39;display:none&#39;>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div style=&#39;display:none&#39;>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>
</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:
> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>

    <div class="context-overlay"></div>

    <div class="ajax-error-message">
      <p><span class="icon"></span> Something went wrong with that request. Please try again. <a href="javascript:;" class="ajax-error-dismiss">Dismiss</a></p>
    </div>

    
    
    
  </body>
</html>

