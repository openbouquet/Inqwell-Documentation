---
layout: page
title: Client Side Tracker Tagging
permalink: /fi/client-tracker-tag
parent: Feeding Inqwell
nav_order: 4

---

<h2 id="ClientSideTrackerTagging-PageTrackingsetup">Page Tracking setup</h2>

Insert in every web page head (just before the closing </HEAD>; tag) the following Javascript tracking code

```
<!-- squidanalytics tracker (v1.8) -->
  <script type="text/javascript">
    var sqtrkq = sqtrkq || [];
    (function() {
      var sqtrk =
      document.createElement('script');
      sqtrk.id="sqtrk"; sqtrk.type =
      'text/javascript'; sqtrk.async = true;
      sqtrk.src = (("https:" ==
      document.location.protocol) ? "https" :
      "http")+"://aws.tracker.squidanalytics.com/js/t
      racker.js";
      var selm =
      document.getElementsByTagName('script')[0];
      selm.parentNode.insertBefore(sqtrk, selm);
  })();

<!-- Mandatory parameters -->

  sqtrkq.push(['wid', '...']);
  var u = new URI(document.location.href);
  sqtrkq.push(['dom', '.' + u.domain()]);

<!-- optional parameters, to be call if relevant -->
  sqtrkq.push(['uid', 'userId or AccountId for  example']);
  sqtrkq.push(['post', true|false]);
  sqtrkq.push(['ext', encodeURIComponent(jsonString)]);

<!-- Call to the tracker -->
  sqtrkq.push(['track']);
  </script>
<!-- end squidanalytics tracker -->
```

<p>This tracking code must be configured:</p><p><strong>wid</strong> : site account id (provided by squid): different ids for prod, preprod or dev sites to be requested to Squid<br/><strong>dom</strong> : the domain to track users on. Typically, this should be your primary domain name prefixed with a dot (ex: &quot;.squidsolutions.com &quot;) which will track users on all your subdomains  . Leaving it blank will restrict the tracking to the current subdomain where the page was loaded from, &amp; generate single event sessions. We use the library <a href="https://github.com/medialize/URI.js" class="external-link" rel="nofollow">URI.js</a> to get this domain, in the code above<br/><strong>uid</strong> : (optional) user id (you may put here an id associated to the current logged user)<br/><strong>post</strong> : (optional) true or false to enable POST requests (handling large requests data). Default is false<br/><strong>ext</strong> : (optional) an extra field used to pass extra information to our tracker, preferably a set of key-value pairs sent as a json string or as a URL query string, URI encoded</p><div class="confluence-information-macro confluence-information-macro-information"><span class="aui-icon aui-icon-small aui-iconfont-info confluence-information-macro-icon"></span><div class="confluence-information-macro-body"><p><strong>Automatic Page tracking</strong></p><p>Adding this tag in every page, &amp; last, pushing 'track' generates a tracking event, considered as a page display.</p></div></div><div class="confluence-information-macro confluence-information-macro-information"><span class="aui-icon aui-icon-small aui-iconfont-info confluence-information-macro-icon"></span><div class="confluence-information-macro-body"><p><strong>Use of extra fields</strong></p><p>Examples use of extra fields: categorize pages, give context additional information (account, content, interactions). Please refer to the tracking rules below for normalized information codes</p>

<h2 id="ClientSideTrackerTagging-HandlingAd-Blockers">Handling Ad-Blockers</h2><p>Ad-Blockers are more &amp; more used &amp; most popular ones block by default our tracker. A good way to bypass these restriction is to reverse proxy our 2 resources <a href="https://aws.tracker.squidanalytics.com/js/tracker.js" class="external-link" rel="nofollow">tracker.js</a> &amp; <a href="https://aws.tracker.squidanalytics.com/t.gif" class="external-link" rel="nofollow">t.gif</a> between a domain you hosts &amp; our tracker domain <a href="http://aws.tracker.squidanalytics.com" class="external-link" rel="nofollow"><strong>aws.tracker.squidanalytics.com</strong></a><br/>Please find a sample configuration to be added in a vhost on Apache:</p><p><strong>Setting the configuration (Apache)</strong></p><div class="code panel pdl" style="border-width: 1px;"><div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">SSLProxyEngine On
SSLProxyCheckPeerCN on
SSLProxyCheckPeerExpire on
RemoteIPHeader X-Forwarded-For
ProxyPass &quot;/js/tracker.js&quot; &quot;https://aws.tracker.squidanalytics.com/js/tracker.js&quot;
ProxyPass &quot;/t.gif&quot; &quot;https://aws.tracker.squidanalytics.com/t.gif&quot;</pre>
</div></div><p>Once this has been added to the vhost config, please release it (shell commands):</p><p><strong>Activate configuration</strong></p><div class="code panel pdl" style="border-width: 1px;"><div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">a2enmod proxy_http ssl remoteip
service apache2 restart</pre>
</div></div></div></div><br/>
<p><strong>Implementation</strong></p><p>Modify the variable sqtrk.src in the script above accordingly to uses the domain configured for your vhost defining the reverse proxy</p>


<h2 id="ClientSideTrackerTagging-EventTrackingsetup">Event Tracking setup</h2><p>In addition of the above code, you can implement event based tracking (panel activation, click event, redirect) by adding following type of function &amp; calling it during clicks processing or other interactions you would like to record</p><p><strong>JavaScript</strong></p>

```
<!-- squidanalytics tracker (v1.8) -->
<script type="text/javascript">
function sqclick(data) {
    try { 
<!-- Generate a json string giving event details-->
      jsonString = ...
      sqtrkq.push(['event', encodeURIComponent(jsonString)]);
    } catch (err) {}
}
</script>
<!-- end squidanalytics tracker -->
```

<p><strong>jsonString</strong>: used to pass event information to our tracker, preferably a set of key-value pairs sent as a json string.</p><div class="confluence-information-macro confluence-information-macro-note"><span class="aui-icon aui-icon-small aui-iconfont-warning confluence-information-macro-icon"></span><div class="confluence-information-macro-body"><p><strong>Event tracking vs Page tracking</strong></p><p>Pushing 'event' generates a tracking event. Without setting the element 'mut' in the jsonString, (see Tracking rules), this hit is counted as a page display event. Please take this in account if you want to consider an event also as a page load or not.<br/>Also don't forget to setup 'mact' element to indicates what is the interaction you want to record<br/>You should also recall any other element provided at page load (page classification, content, etc ...) so the whole context is recorded in the event</p></div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<h2 id="ClientSideTrackerTagging-TrackingPixelSetup"><strong>Tracking Pixel Setup</strong></h2><p>In the case of a non Javascript environment (Mobile app, AdServer creative, Emailing....) a &quot;pixel&quot; version of the tracking code is available :</p><p><strong>HTML</strong></p><div class="code panel pdl" style="border-width: 1px;"><div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">&lt;img width=&quot;1&quot; height=&quot;1&quot; src=&quot;//aws.tracker.squidanalytics.com/t.gif?wid={wid}&amp;uid={uid}&amp;bid={bid}&amp;sid={sid}&amp;ref={ref}&amp;url={url}&amp;ext=noscript&amp;ext={ext}&quot; /&gt;</pre>
</div></div><br/><p>Configure the tracking code :<br/><strong>wid</strong> : site account id (provided by squid)<br/><strong>uid</strong> : (optional) user id (you may put here an id associated to the current logged user)<br/><strong>bid</strong> : browser id (less than 37 chars) - it is the unique browser identifier used to track all visits.. (optional).<br/><strong>sid</strong> : session id (less than 37 chars) - it is the unique session identifier used to track all session interactions. (optional).<br/><strong>ref</strong> : referring page url (url-encoded) (optional)<br/><strong>url</strong> : current page url (url-encoded) (optional)<br/><strong>ext</strong> : extra parameters. if a &quot;noscript&quot; value is set, 3rd-party cookie tracking will be enabled (optional)</p></div>
</div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<h2 id="ClientSideTrackerTagging-Notes">Notes</h2><p><strong>Third-party tracking</strong></p><p>3rd-party cookies must be used when performing cross-site tracking.</p><p>For instance when the tracking pixel is used to track creatives served by an Ad-Server, only 3rd party cookies can be used since the page where the pixel is displayed is on an external domain.</p><p>By default 3rd-party cookies are created on our .squidanalytics.com domain.</p><p>Should this cause data confidentiality issues, we may be able to create them on a specific 3rd-party domain by setting-up a DNS alias on a custom sub-domain, so that our tracking infrastructure is seen as being part of the .3rdparty.com domain and thus is able to create cookies on this domain.</p><p>In that case the tracking pixel would turn to :</p><p><strong>HTML</strong></p><div class="code panel pdl" style="border-width: 1px;"><div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">&lt;img width=&quot;1&quot; height=&quot;1&quot; src=&quot;//tracking.3rdparty.com/t.gif?wid={wid}&amp;uid={uid}&amp;bid={bid}&amp;sid={sid}&amp;ref={ref}&amp;url={url}&amp;ext=noscript&amp;ext={ext}&quot; /&gt;</pre>
</div></div><div class="confluence-information-macro confluence-information-macro-note"><span class="aui-icon aui-icon-small aui-iconfont-warning confluence-information-macro-icon"></span><div class="confluence-information-macro-body"><br/><p><strong>Limitations</strong></p><p>3rd-party cookies are not enabled by default on Safari-based browsers. Therefore when such a browser is detected by its user-agent string, we will not enable the 3rd-party tracking.</p><p>Also Ad Blockers are removing our third party cookies</p></div></div></div>
</div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<h2 id="ClientSideTrackerTagging-Trackingrules">Tracking rules</h2><p>In order to avoid double counting, it is recommended to call the method sqtrkq.push in the following cases only</p><ul><li><p><strong>Page load</strong>: When the page load, call sqtrkq.push(['track']) once only. This will log a record. All mandatory &amp; optional parameters (wid, dom, ext, ...) must be pushed before the track call</p></li><li><p><strong>User interaction</strong>: When a user interact with a page &amp; you want to record this activity, you have to call sqtrkq.push(['event',... to log this record. Doing that on user activity avoids to track technical artefact. User activity can be a click, opening a popup or panel, etc, etc.</p></li></ul><p>It is important to record using the ext field any valuable information that can’t be parsed from the url and/or the referrer.<br/>Here is a proposed list of tags to be implemented in this field when information is not available through URL or Referrer fields:</p><div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 202.0px;"/><col style="width: 201.0px;"/><col style="width: 201.0px;"/><col style="width: 201.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>urlCategory</strong></p></th><th class="confluenceTh"><p><strong>Tag Name</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Purpose</strong></p></th></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>cid</p></td><td class="confluenceTd"><p>Content identifier</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>citid</p></td><td class="confluenceTd"><p>Content item id (ex: an journal article id or book chapter, or track id ...)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>cent</p></td><td class="confluenceTd"><p>Entitlement path from the user to the content if paid. It can be the subscription id or the account id paying for it, leave blank if anonymous usage</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>ccid</p></td><td class="confluenceTd"><p>Content Collection id if exists (group of products)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>cdid</p></td><td class="confluenceTd"><p>Database/product bought it comes from (useful to indicates what is the database when content linked to many)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>cdt</p></td><td class="confluenceTd"><p>Content display type (Video, Abstract, Citation, HTML, Image, ...)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>ctid</p></td><td class="confluenceTd"><p>Content Type (Book, Journal, etc)</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>sid</p></td><td class="confluenceTd"><p>Search id it comes from (see transaction ID in misc)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>cgoa</p></td><td class="confluenceTd"><p>Gold Open Access flag</p></td><td class="confluenceTd"><p>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>ctu</p></td><td class="confluenceTd"><p>Turnaway category</p></td><td class="confluenceTd"><p>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>car</p></td><td class="confluenceTd"><p>Backfiles/archived content flag</p></td><td class="confluenceTd"><p>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>cpid</p></td><td class="confluenceTd"><p>Content publisher Id (content can be published by several)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Content pages</p></td><td class="confluenceTd"><p>caip</p></td><td class="confluenceTd"><p>Article in Press flag</p></td><td class="confluenceTd"><p>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mpid</p></td><td class="confluenceTd"><p>Platform Id</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mtip</p></td><td class="confluenceTd"><p>Transaction Id (Page ID), unique transaction id server side<br/>Multiple pages from the same search should have the same transactionid as it comes from the same search recall)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mpa</p></td><td class="confluenceTd"><p>Page classification (Content, Search, Browse, Transaction, Home, About...). This has a direct impact on what is counted where in Inkwell apps</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mpsa</p></td><td class="confluenceTd"><p>Page sub classification: own site page categorization</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mvan</p></td><td class="confluenceTd"><p>Current navigation path used on the site</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>merr</p></td><td class="confluenceTd"><p>Error flag (a code indicating a type of error: during login, transaction ...)</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>maid</p></td><td class="confluenceTd"><p>Account ID viewing the content</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>maut</p></td><td class="confluenceTd"><p>List of authentication methods (IP/LOGIN/SSO or a combination of these)</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mact</p></td><td class="confluenceTd"><p>Action on page (reference, citation, outlink, click, record_view, addtobasket, removefrombasket, payment, payment_ack, ...)</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mdid</p></td><td class="confluenceTd"><p>destination: Content id/page id(or url if outlink)</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mut</p></td><td class="confluenceTd"><p>Usage type: page (so counted as a page hit), event (so not counted as a page hit).</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Miscellaneous</p></td><td class="confluenceTd"><p>mcz</p></td><td class="confluenceTd"><p>Zone in the page of the interaction (toolbar, left or right panels, menu bar, position of an result list item ...)</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>spn</p></td><td class="confluenceTd"><p>Page number selected in the search result</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>ssst</p></td><td class="confluenceTd"><p>Sort type selected</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>ssos</p></td><td class="confluenceTd"><p>Sort order selected</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>sst</p></td><td class="confluenceTd"><p>Search Terms</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>sse</p></td><td class="confluenceTd"><p>Search Engine (basic, advanced, ...)</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>srs</p></td><td class="confluenceTd"><p>c.srs for search result size</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>sfu</p></td><td class="confluenceTd"><p>List of Facets used in search</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>scid</p></td><td class="confluenceTd"><p>List of collections searched</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>sdid</p></td><td class="confluenceTd"><p>List of databases searched, with owner id</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Searches</p></td><td class="confluenceTd"><p>sfe</p></td><td class="confluenceTd"><p>Federated search flag</p></td><td class="confluenceTd"><p>Usage<br/>Counter</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>tbid</p></td><td class="confluenceTd"><p>Basket Id for back office reconciliation</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>tcid</p></td><td class="confluenceTd"><p>Content id (or item)</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>tit</p></td><td class="confluenceTd"><p>Number of items involved</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>tpi</p></td><td class="confluenceTd"><p>Price of the item</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>tca</p></td><td class="confluenceTd"><p>Rebate amount on the item</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>gra</p></td><td class="confluenceTd"><p>Global rebate amount</p></td><td class="confluenceTd"><p>Usage</p></td></tr><tr><td class="confluenceTd"><p>Transaction</p></td><td class="confluenceTd"><p>tvc</p></td><td class="confluenceTd"><p>Voucher code used</p></td><td class="confluenceTd"><p>Usage</p></td></tr></tbody></table></div><p>When information is available in the URL or the referrer, the corresponding tag can be skipped, it will be extracted from these fields with the help of regexp. The customer has to inform Bouquet.ai which &amp; where the information is located inside the referrer and/or the URL</p></div>
</div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout fixed-width" data-layout="fixed-width">
<div class="cell normal" data-type="normal">
<div class="innerCell">

<script src="../assets/js/removeMadeWith.js"></script>