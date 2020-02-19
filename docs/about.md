---
layout: page
title: About
permalink: /about/
nav_order: 1
---



## Counter Application
The purpose of this document is :
- to present how to read into the counter data model - what is the process to lead you from raw
logs to a Counter data model,
- to help you to identify if your logs are usable or not,
- to help you identify the co-workers that are able to answer these questions and work with us
during this project.
## Data completeness
Two types of data are required:
- **Access (or usage) logs:** Generally extracted from servers logs. They describe the actions
taken by the platform visitors. You can provide these logs from your own system (see
Retrievals & Searches data models) or use our Client Side Tracker technology to collect
usage from your applications
- <b>Reference data:</b> Logs need to be enriched. When for example the file 531570.pdf appears to
be downloaded in the logs, we need to know that “531570” is the ID of the document called
“Asthma cure”. Mapping this ID with a readable name is an example of reference data
enrichment.
## More about Reference Data
Counter reports imposes the ability to report non usage on subscribed content. We require you to
provide this subscription information (see Zero Usage Data Model).
Counter reports handles lots of reference data about content such as identification (DOI, ISSN, ISBN)
or publisher, this has to provided not only on used content but also for the whole subscribed content.


<script src="../assets/js/removeMadeWith.js"></script>