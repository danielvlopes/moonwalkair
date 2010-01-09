# MoonwalkAIR: Easy way to create AIR apps with JS

MoonwalkAIR provides:

 * binary to generate your app folder
 * script to run your app
 * script to build your air file
 * script to create self signed certificate thats necessary to compile AIR apps

## Dependencies

  * ruby
  * rubygems
  * air sdk

## What is generated for you:

When you call moonwalk command it will generate a folder structure where you will start your app. The content is this:

<pre>
.
|-- LICENSE
|-- README
|-- app
|   |-- assets
|   |   |-- audio
|   |   |-- css
|   |   |   |-- jqtouch.css
|   |   |   |-- test.css
|   |   |   `-- theme.css
|   |   `-- images
|   |       |-- apple
|   |       `-- icons
|   |           |-- 128.png
|   |           |-- 16.png
|   |           |-- 32.png
|   |           `-- 48.png
|   |-- lib
|   |   |-- air
|   |   |-- jquery.js
|   |   `-- plugins
|   |       `-- jqtouch
|   |           |-- jqtouch.js
|   |           `-- jqtouch.transitions.js
|   |-- scripts
|   `-- views
|       `-- index.html
|-- bin
|-- config
|   |-- boot.rb
|   |-- build.yml
|   |-- config.yml
|   `-- update_config.xml
|-- descriptor.xml
`-- script
    |-- build
    |-- certificate
    `-- run
</pre>

## Installing

    gem install moonwalkair

## Using

It's easy to get up and running.

    moonwalk my_app

open my_app/config/config.yml and put your AIR SDK path

    script/certificate -p your_password
    script/run
    script/build

## Developing your APP

By default your folder will be created with jQuery and jQtouch (all animations will work if you use AIR 2.0 Beta) but you can use any other JS Library.
Just remove default folder inside "my_app/app" folder and place your prefered JS files, you also need to update "my_app/config/build.yml".
Now everytime you call script/run or script/build it will load the correct files.

You will work most of time in app folder and only thing you need to know is HTML/CSS and Javascript.
You will also need to know how AIR api works, and recommend these links:

 * [Adobe AIR 1.5](http://help.adobe.com/en_US/AIR/1.5/devappshtml/index.html)
 * [Adobe AIR language reference](http://help.adobe.com/en_US/AIR/1.5/jslr/)
 * [Adobe AIR Developer center](http://www.adobe.com/devnet/air/ajax/quickstart/)

## Who is behind

I (Daniel Lopes) did this project with only goal to help me to be more productive in my new AIR apps and avoid some repetitive decisions about organization.
Any help will be very wellcome, but don't expect support or customized features.