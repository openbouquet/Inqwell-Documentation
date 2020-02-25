---
layout: page
title: Counter Application
permalink: /io/counter-application
parent: Inqwell Offering
nav_order: 2
has_children: true
---

# Counter Application

<p>The purpose of this document is :</p><ul><li><p>to present how to read into the counter data model - what is the process to lead you from raw logs to a Counter data model,</p></li><li><p>to help you to identify if your logs are usable or not,</p></li><li><p>to help you identify the co-workers that are able to answer these questions and work with us during this project.</p></li></ul>

<h2 id="CounterApplication-Datacompleteness">Data completeness</h2><p>Two types of data are required:</p><ul><li><p><strong>Access (or usage) logs</strong>: Generally extracted from servers logs. They describe the actions taken by the platform visitors. You can provide these logs from your own system (see Retrievals &amp; Searches data models) or use our Client Side Tracker technology to collect usage from your applications</p></li><li><p><strong>Reference data</strong>: Logs need to be enriched. When for example the file 531570.pdf appears to be downloaded in the logs, we need to know that “531570” is the ID of the document called “Asthma cure”. Mapping this ID with a readable name is an example of reference data enrichment.</p></li></ul>
<h2 id="CounterApplication-MoreaboutReferenceData">More about Reference Data</h2><p>Counter reports imposes the ability to report non usage on subscribed content. We require you to provide this subscription information (see Zero Usage Data Model).<br/>Counter reports handles lots of reference data about content such as identification (DOI, ISSN, ISBN) or publisher, this has to provided not only on used content but also for the whole subscribed content.</p>


