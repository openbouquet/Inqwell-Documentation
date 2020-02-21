---
layout: page
title: Handling Subscriptions & Account Hierarchies
permalink: /io/counter-application/handling-subscriptions-acc-hierarchies
parent: Counter Application
grand_parent: Inqwell Offering
nav_order: 2
---

<h1 id ="">Handling Subscriptions & Account Hierarchies</h1>
<h2 id="HandlingSubscriptions&amp;AccountsHierarchies-HandlingAccountsHierarchies">Handling Accounts Hierarchies</h2>

<p>The only data requested is a 2 columns file indicating each parent-child relation<br/>Hierarchies management allow for a node to have multiple parents &amp; multiple children.<br/>It works as many n-levels hierarchy.</p><p>Squid Solutions will handle a differential process to tag the lifetime of every hierarchy branch. This is to ensure a correct reporting of hierarchies &amp; 0 usage along the reporting period selected.</p>

<h2 id="HandlingSubscriptions&amp;AccountsHierarchies-HandlingSubscriptions">Handling Subscriptions</h2>

<p>You must provide also all databases subscribed by accounts.<br/>By default all children are inheriting content owned by the owner, through their subscriptions.<br/>But you can manage suspensions &amp; exclusions:</p><ul><li><p>Suspension is at global level: the whole subscription access is temporarily removed across the full hierarchy</p></li><li><p>Exclusion is at a child level: the subscription's content isn't granted to this particular child (&amp; only this one, not his children if any)<br/>Squid Solutions will handle a differential process to tag the lifetime of every subscription. This is to ensure a correct reporting of 0 usage along the reporting period selected.</p></li></ul>

<h2 id="HandlingSubscriptions&amp;AccountsHierarchies-WorkingwithSubscriptions&amp;Hierarchies">Working with Subscriptions &amp; Hierarchies</h2>

<p>The hierarchy also allows to select and sum up usage at the reporting level of your choice with the help of 3 selections:</p><ul><li><p>Parent Account: Node from which the content is granted (content owned or inherited)</p></li><li><p>Account: Reporting node onto which the content will be counted.</p></li><li><p>Child Account: Node from which the content usage is counted (user of the content, or parent user of the content)</p></li></ul><p>Let's illustrate that with an example or a hierarchy &amp; subscriptions:</p>

<img src="../../../inqwell-documentation/assets/images/hierarchy-example.png" alt="hierarchy-example">

<p>In orange, these accounts pay for some database subscriptions. Accounts in blue are not paying for anything. Also color links help identifying a path<br/>For example,</p><ul><li><p>Account D inherit database 1 from A &amp; database 2 from parent C</p></li><li><p>Only account G can see DB4 but inherit database 1 from parents A or B and database 2 from parent C<br/>With the hierarchy logic implemented in the Counter App, by:</p></li><li><p>Selecting a parent you restrict the databases to the ones owned by him or its parents</p></li><li><p>Selecting a child you restrict the usage to him or its children</p></li><li><p>Selecting the account you want to rollup corresponding usage at this level</p></li></ul>

<img src="../../../inqwell-documentation/assets/images/hierarchy-example2.png" alt="hierarchy-example2">

In the example above we want to report usage of child E &amp; grandchild G into account C only if content is provided by parent A. So we will only count DB1 content usage if it being paid by parent A (if it comes from parent B, it will not be counted).

If you select parent = account = child, you count any content provided by the account or his parents, across all children of the account, including himself. This allow for example to view usage at Consortium level, including all children but also rollup at any level, to view usage at a sub level but only on one path by selecting the correct parent to handle properly 0 usage &amp; databases exclusions (like for account F) Include /exclude children according to the time they join/leave the hierarchy.

<script src="../../assets/js/removeMadeWith.js"></script>