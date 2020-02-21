---
layout: page
title: Searches
permalink: /fi/counter-data-model/searches
parent: Counter Data Model
grand_parent: Feeding Inqwell
nav_order: 2

---

<h1>Searches</h1>

<p>Here is the data model for the main properties of search events</p>

<div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 306.0px;"/><col style="width: 306.0px;"/><col style="width: 188.0px;"/><col style="width: 425.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Column Name</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Format</strong></p></th><th class="confluenceTh"><p><strong>Comment / Possible values</strong></p></th></tr><tr><td class="confluenceTd"><p>Session ID</p></td><td class="confluenceTd"><p>Session identifier of a user's visit</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search ID</p></td><td class="confluenceTd"><p>Unique search identifier</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search date</p></td><td class="confluenceTd"><p>Date of the event</p></td><td class="confluenceTd"><p>DATE</p></td><td class="confluenceTd"><p>See default file format</p></td></tr><tr><td class="confluenceTd"><p>Search timestamp</p></td><td class="confluenceTd"><p>Timestamp of the event</p></td><td class="confluenceTd"><p>TIMESTAMP</p></td><td class="confluenceTd"><p>See default file format</p></td></tr><tr><td class="confluenceTd"><p>Platform ID</p></td><td class="confluenceTd"><p>Platform identifier</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Application ID</p></td><td class="confluenceTd"><p>Application identifier serving the content</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Content Consumer ID</p></td><td class="confluenceTd"><p>Account performing the search</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Federated Search Flag</p></td><td class="confluenceTd"><p>Federated search Y/N</p></td><td class="confluenceTd"><p>BOOLEAN</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Recall size</p></td><td class="confluenceTd"><p>Total size of the recal</p></td><td class="confluenceTd"><p>INTEGER</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search terms</p></td><td class="confluenceTd"><p>Search terms</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search Criterias</p></td><td class="confluenceTd"><p>Search results criterias (sorting, relevance ...)</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search Engine</p></td><td class="confluenceTd"><p>Search Engine used</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr></tbody></table></div><p>Here is the data model for the detailed properties of a search:</p><div class="table-wrap"><table data-layout="default" class="confluenceTable"><colgroup><col style="width: 172.0px;"/><col style="width: 169.0px;"/><col style="width: 103.0px;"/><col style="width: 236.0px;"/></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Column Name</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th><th class="confluenceTh"><p><strong>Format</strong></p></th><th class="confluenceTh"><p><strong>Comment / Possible values</strong></p></th></tr><tr><td class="confluenceTd"><p>Session ID</p></td><td class="confluenceTd"><p>Session identifier of a user's visit</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search ID</p></td><td class="confluenceTd"><p>Unique search identifier</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Search date</p></td><td class="confluenceTd"><p>Search Date of the event</p></td><td class="confluenceTd"><p>DATE</p></td><td class="confluenceTd"><p>See default file format</p></td></tr><tr><td class="confluenceTd"><p>Subscription Id</p></td><td class="confluenceTd"><p>Subscription identifier</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Database Owner Id</p></td><td class="confluenceTd"><p>Database owner</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Content ID</p></td><td class="confluenceTd"><p>Content ID available in the recall</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p>Must be provided only for BR5</p></td></tr><tr><td class="confluenceTd"><p>Database ID</p></td><td class="confluenceTd"><p>Database ID searched</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Collection ID</p></td><td class="confluenceTd"><p>Content's collection ID</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr><tr><td class="confluenceTd"><p>Database Publisher ID</p></td><td class="confluenceTd"><p>Publisher of the database</p></td><td class="confluenceTd"><p>VARCHAR</p></td><td class="confluenceTd"><p /></td></tr></tbody></table></div>

<script src="../../assets/js/removeMadeWith.js"></script>