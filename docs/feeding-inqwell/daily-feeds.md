---
layout: page
title: Daily Feeds
permalink: /fi/daily-feeds
parent: Feeding Inqwell
nav_order: 3
---
# Daily Feeds

<h2 id="DailyFeeds-Filestransfer">Files transfer</h2>

We require a daily feed to be uploaded into a dedicated S3 folder created for your platform. Please contact Bouquet.ai for its setup.


> **Protection**

> This folder, hosted on Bouquet’s AWS account is explicitelly restricted on your IAM role to ensure privacy

<h2 id="DailyFeeds-Filesformat&amp;naming">Files format &amp; naming</h2>

<p>Please ensure to use the following format when generating files for the daily feed:</p><ul><li><p>File encoding : UTF-8 only</p></li><li><p>File compression: Always compressed in GZIP</p></li><li><p>Rows format: Delimited</p></li><li><p>Separator: ',' (comma)</p></li><li><p>Field delimiter (text only): '&quot;' (double quote)</p></li><li><p>Date format: YYYY-MM-DD</p></li><li><p>Timestamp format YYYY-MM-DD HH24:mm:SS.FFF in UTC time zone</p></li><li><p>Boolean format: 0 (false) &amp; 1 (true) only</p></li><li><p>Null values: leave field blank</p></li><li><p>Decimal separator: '.' (dot)</p></li><li><p>Escape char: '\' (please escape the field delimiter &amp; the escape char within delimited fields )</p></li><li><p>Header: fields name on top , they can follow your own naming convention</p></li></ul><p>Please generate file names as follow: YYYYMMDD_<em>tablename</em>.csv.gz<br/><em>tablename</em> is one of the following value :</p><ul><li><p>&quot;retrieval&quot;,</p></li><li><p>&quot;search&quot; or &quot;search_detail&quot;,</p></li><li><p>&quot;account&quot;, &quot;account_hierarchy&quot;, &quot;article&quot;, &quot;content&quot;, &quot;database&quot;, &quot;collection&quot;, &quot;publisher&quot;, &quot;application&quot;, &quot;format&quot;</p></li><li><p>&quot;subscription&quot;, &quot;subscription_suspension&quot;,&quot;subscription_exception&quot;,&quot;database_content&quot;</p></li></ul>
