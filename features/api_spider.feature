Feature: Checking Api.Timescity Robots.txt

Scenario: All the URLs are not allowed by default

Given I read robots.txt at "api.timescity.com" as "googlebot"
When I lookup for "http://api.timescity.com"
Then It should not be allowed for crawling

Given I read robots.txt at "api.timescity.com" as "googlebot"
When I count number of sitemaps listed in robots.txt of "http://api.timescity.com"
Then The count of sitemaps is 0 

Scenario: 404 page is blocked for spiders

Given I read robots.txt at "api.timescity.com" as "googlebot"
When I lookup for "http://api.timescity.com/404.php"
Then It should not be allowed for crawling



