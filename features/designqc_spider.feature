Feature: Checking Design.qc.Timescity Robots.txt

Scenario: All the URLs are not allowed by default

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com"
Then It should not be allowed for crawling

Scenario: 2db is blocked for spiders

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/2db/abc"
Then It should not be allowed for crawling

Scenario: AjaxSearch is blocked for spiders

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/AjaxSearch/abc"
Then It should not be allowed for crawling

Scenario: fb is blocked for spiders

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/fb/abc"
Then It should not be allowed for crawling

Scenario: gateway is blocked for spiders

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/gateway/abc"
Then It should not be allowed for crawling

Scenario: Solr Api is blocked for spiders at Design QC server

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/SolrApi/abc"
Then It should not be allowed for crawling

Scenario: Crons is blocked for spiders at Design QC server

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/crons/abc"
Then It should not be allowed for crawling

Scenario: Robots.txt has 0 sitemaps

Given I read robots.txt at "design.qc.timescity.com" as "googlebot"
When I count number of sitemaps listed in robots.txt of "http://design.qc.timescity.com"
Then The count of sitemaps is 0 

Scenario: Bengaluru Sitemaps were updated in last 24 hours

Given I am reading lastmod time of xml file of "1" entry of "1" sitemap
When I compare the difference between now & the timestamp
Then The difference should be less than "24" hours

Scenario: Delhi Sitemaps were updated in last 24 hours

Given I am reading lastmod time of xml file of "3" entry of "1" sitemap
When I compare the difference between now & the timestamp
Then The difference should be less than "24" hours

Scenario: Mumbai Sitemaps were updated in last 24 hours

Given I am reading lastmod time of xml file of "7" entry of "1" sitemap
When I compare the difference between now & the timestamp
Then The difference should be less than "24" hours

Scenario: Goa Sitemaps were updated in last 24 hours

Given I am reading lastmod time of xml file of "4" entry of "1" sitemap
When I compare the difference between now & the timestamp
Then The difference should be less than "24" hours

Scenario: Chennai Sitemaps were updated in last 24 hours

Given I am reading lastmod time of xml file of "2" entry of "1" sitemap
When I compare the difference between now & the timestamp
Then The difference should be less than "24" hours

Scenario: BarsnClubs in Ahmedabad is blocked for spiders

Given I read robots.txt at "www.timescity.com" as "googlebot"
When I lookup for "http://design.qc.timescity.com/ahmedabad/barsnclubs"
Then It should not be allowed for crawling




