RoboShot
========

An unoriginal web app that snaps screenshots of webpages and then displays the results.

<img src="https://raw.github.com/cacciatc/roboshot/master/public/img/robo.png" />

## Presentation Sketch

### Building A Rack Backend In 30 Minutes
_Wherein Chris demonstrates the ease of building and deploying a small Rack-based app to Heroku._

This is RoboShot an unoriginal web app that snaps screenshots of webpages and then displays the results. I built him
to experiment with PhantomJS's screenshot abilities.

#### Robo's parts list:

* [AngularJS](http://angularjs.org/)
* [Sinatra](http://www.sinatrarb.com/)
* [Grape](https://github.com/intridea/grape)
* [CarrierWave](https://github.com/jnicklas/carrierwave) + [Fog](http://fog.io/) + [MiniMagick](https://github.com/probablycorey/mini_magick)
* [PhantomJS](http://phantomjs.org/)
* [Unicorn](http://unicorn.bogomips.org/)

#### How's This Going To Work?

For this walk-through we will keep the front-end and throw away most everything else. 
We will then rebuild Robo's backend in three installments:

* Install gems, copy front-end, serve front-end
* PhantomJS & API
* Rack glue & deployment

After each section I will ask for questions, so please save any you may have till one of those breaks. 
Now would be one of those breaks.

__Questions?__

#### Install Gems, Copy Front-end, Serve It

1. mkdir
2. Create Gemfile.
3. Bundle it.
4. cp front end (views & public dir)
5. Show views/app.html briefly.
6. Create app.rb.
7. Demonstrate the page is served.
8. Git init, git add ., git commit -m "first round."

__Questions?__

#### PhantomJS & API

1. cp PhantomJS (bin & phantom dirs)
2. ls bin.
3. ls Phantom dir
4. cat phantom/phantom.rb
5. cat phantom/script.js
6. Create api.rb basic.
7. Run api and curl basic.
8. Add carrier wave logic.
9. Run api and curl demo
10. Git init, git add ., git commit -m "second round."

__Questions?__

#### Rack glue & Deployment

1. Create config.ru
2. Rackup
3. Heroku create
4. git push heroku master
5. Test it out.

__Questions?__

#### Exercises For The Reader

* Add Unicorn for better concurrency.
* Add HTTP basic auth
* API throttling (a couple rack middle wares out there, but many are no longer actively maintained)
* Push the screenshot logic into workers. (although unicorn helps us quite a bit).
 

Code for RoboShot is on github at https://github.com/cacciatc/roboshot.

Thanks for listening. I'm Chris Cacciatore from [Dullahan Software](http://www.dullahansoft.com/).

<img height=200 src="https://secure.gravatar.com/avatar/0c074910b20154ca0b2244ac1d56c176?s=420&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-org-420.png"/>

__Questions?__

