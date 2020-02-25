---
layout: page
title: Client Side Tracker
permalink: /io/client-side-tracker
parent: Inqwell Offering
nav_order: 4
---



# Client Side Tracker


Squid Solutions proposes a Client Side Tracker to collect usage on your sites. A javascript tagging script does the work, in async mode.

This usage serves the different applications. For Counter or Publisher applications, this usage feed can replace the default aggregated usage feed you must provide.

<h2 id="ClientSideTracker-Features">Features</h2><ul><li><p><strong>First-party and optional Third-party cookies</strong>: All cookie-based tracking relies on 1st-party cookies by default, and can optionally rely on 3rd-party cookies when required.</p></li><li><p><strong>Asynchronous mode</strong>: Tracker Javascript code is loaded asynchronously to avoid blocking page rendering while loading and performing its tracking queries.</p></li><li><p><strong>Events tracking</strong>: Tracking can be configured to send extra ad-hoc tracking events such as clicks, rollovers...</p></li><li><p><strong>Page view time</strong>: Tracking can be configured to track how long a user stayed on a page using scheduled event tracking requests.</p></li><li><p><strong>Support for non-Javascript enabled apps</strong>: Tracking can be performed from apps such as WAP or native iOS or Android apps.</p></li><li><p><strong>Cross-Site tracking</strong>: Tracking can be configured to track user sessions across different domains by using a specific 3rd party cookie.</p></li><li><p><strong>Support for custom data</strong>: Additional data can be sent along with the tracking request depending on the project requirements (ie. HTML5 performance data, Javascript variables, injected backend data ...)</p></li><li><p><strong>Support for opt-out</strong>: A specific opt-out cookie can be set to mark a device as &quot;do-not-track&quot;, preventing it from being tracked by our tracker.</p></li><li><p><strong>Geo-localization based on user IP address</strong>: Note that the IP address is anonymized in-memory and therefore is never stored in it original form whatsoever.</p></li></ul>

<h2 id="ClientSideTracker-DefaultTrackeddata">Default Tracked data</h2>

<ul><li><p>visit timestamp</p></li><li><p>visitor id</p></li><li><p>visitor session id</p></li><li><p>logged-in user id (if injected by backend)</p></li><li><p>visited page url</p></li><li><p>referring page url</p></li><li><p>user location based on user IP address</p></li><li><p>browser type</p></li></ul>
