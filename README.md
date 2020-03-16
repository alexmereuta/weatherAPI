# README

Using OpenWeatherMap API to get some weather specific weather information. Using `mysql2` to save the response to not exceed request limit.

What is avaiable:

* A list of the user’s favourite locations where the temperature will be above a certain temperature the next day;

* A list of temperatures for the next 5 days in one specific location. 

Example request

* `/weather/summary?unit=<celsius|fahrenheit>&locations=<comma separated list of location ids>` 

* `/weather/locations/<location_id>`

