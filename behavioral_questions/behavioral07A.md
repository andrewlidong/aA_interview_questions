Introduction:

Tell me the story behind your resume

(assume you're applying to Eventbrite)

Just Google It:

What happens when you type in Google.com and hit enter?  

(this is a very common interview question)

What happens when you navigate to google.com?
This is one of the most common interview questions of all time. It will come up at interviews. Memorize it.

Browser checks its own DNS cache for a corresponding IP address, then your OS’ DNS cache, then (most likely) checks the default router's DNS cache, then ISP / configured DNS server until it gets an answer.
Browser builds HTTP GET string with “http://[url]” as the requested URL
Browser sends request over the network (if asked how that works, mention the Border Gateway Protocol and say you don’t know how it works)
(Possible interaction with proxy server / load balancer / CDN / etc.)
Server parses request string and routes it using Regex on the request path
Application layer assembles a response, possibly via a connection to a DB server
Response goes back over the network
Browser parses the response
Browser checks the headers, in particular the status code.
Browser goes down each HTML element and either paints the DOM or executes the tag
The browser builds a new GET request for each CSS or JS tag, goes through the same steps as above, and runs the code before proceeding.
