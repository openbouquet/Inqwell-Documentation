---
layout: page
title: Zero Usage Data Model
permalink: /fi/counter-data-model/zero-usage-data-model
parent: Counter Data Model
grand_parent: Feeding Inqwell
nav_order: 4

---
<h1>Zero Usage Data Model</h1>

<p>Some Counter reports such as JR1 must provide the capability to show 0 usage on content, meaning content having been subscribed on a period, but not having been consumed.<br/>Inqwell offers the ability to collect subscribed content and generate the proper reports.</p>

<h2 id="ZeroUsageDataModel-Subscriptions"><strong>Subscriptions</strong></h2>

<p>This is the main subscription table linking an account with the databases he has access to.<br/>We request a daily feed of the entire active subscriptions only. Inqwell processing will handle start &amp; end periods of subscription comparing the current daily feed with the whole history already loaded.<br/>Subscription under grace period should be considered as active thus sent<br/>Any missing subscription in daily feed will lead to exclude their usage from reports<br/>Requesting 0 usage includes subscriptions' contents being active within the desired period</p>


<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 201.0px;"/><col style="width: 353.0px;"/><col style="width: 251.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Column</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Format</strong></p></th></tr><tr><td class="confluenceTd"><p>Subscription ID</p></td><td class="confluenceTd"><p>Unique identifier of a subscription</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Account ID</p></td><td class="confluenceTd"><p>Account identifier having subscribed</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Database ID</p></td><td class="confluenceTd"><p>Database Id being subscribed</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Application Id</p></td><td class="confluenceTd"><p>Application used to serve the content (duplicate rows if several application can serve the same subscription)</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr></tbody></table></div></div>
</div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<h2 id="ZeroUsageDataModel-Suspensions"><strong>Suspensions</strong></h2><p>You have the ability to indicates the temporary suspension of an entire subscription. Just add the corresponding data in the daily feed, every day the suspension is valid</p><div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 197.0px;"/><col style="width: 354.0px;"/><col style="width: 254.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Column</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Format</strong></p></th></tr><tr><td class="confluenceTd"><p>Subscription ID</p></td><td class="confluenceTd"><p>Unique identifier of a subscription</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Account ID</p></td><td class="confluenceTd"><p>Account identifier having subscribed</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Application Id</p></td><td class="confluenceTd"><p>Application used to serve the content (duplicate rows if several application can serve the same subscription)</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr></tbody></table></div></div>
</div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<h2 id="ZeroUsageDataModel-Exclusions"><strong>Exclusions</strong></h2><p>You have the ability to exclude the access of a database for a given child, and for a given period. Just add the relevant information every day the exclusion occurs</p><div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 164.0px;"/><col style="width: 301.0px;"/><col style="width: 198.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Column</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Format</strong></p></th></tr><tr><td class="confluenceTd"><p>Subscription ID</p></td><td class="confluenceTd"><p>Unique identifier of a subscription</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Child Account ID</p></td><td class="confluenceTd"><p>Child Account being excluded from access</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Database ID</p></td><td class="confluenceTd"><p>Database Id being excluded</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Application Id</p></td><td class="confluenceTd"><p>Application used to serve the content (duplicate rows if several application can serve the same subscription)</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr></tbody></table></div></div>
</div>
<div class="cell aside" data-type="aside">
<div class="innerCell">
<p /></div>
</div>
</div>
<div class="columnLayout two-right-sidebar" data-layout="two-right-sidebar">
<div class="cell normal" data-type="normal">
<div class="innerCell">
<h2 id="ZeroUsageDataModel-DatabasesContent"><strong>Databases Content</strong></h2><p>For 0 usage, indicates in this daily feed all the content available per database. Inqwell wil handle start &amp; end date of a content availability within each its databases for proper reporting. A daily feed is required</p><div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 201.0px;"/><col style="width: 364.0px;"/><col style="width: 239.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Column</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Format</strong></p></th></tr><tr><td class="confluenceTd"><p>Database ID</p></td><td class="confluenceTd"><p>Unique identifier of a database</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Content Id</p></td><td class="confluenceTd"><p>Unique identifier of a content</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr><tr><td class="confluenceTd"><p>Application Id</p></td><td class="confluenceTd"><p>Application used to serve the content (duplicate rows if several application can serve the same subscription)</p></td><td class="confluenceTd"><p>VARCHAR</p></td></tr></tbody></table></div></div>
</div>

