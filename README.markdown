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

### Creating your app

It's easy to get up and running, just run the follow command to get all folders and files in the right place.

    moonwalk my_app

### AIR SDK

After generate your app you need to point what is your AIR SDK path in "my_app/config/config.yml"

### Certificates

AIR apps need a certificate to be compiled, for development and tests purpose you can create a self signed certificate with the following command:

    script/certificate -p your_password

### Running

Now you can run your APP with:
    
    script/run
    
### Building

To build your app you should have a certificate file in config, after that just call the following command and type your password. This command also minify and obfuscate all your css and js files.

    script/build

## Developing your APP

By default your folder will be created with jQuery and jQtouch (all animations will work if you use AIR 2.0 Beta) but you can use any other JS Library.
Just remove default folder inside "my_app/app" folder and place your prefered JS files, you also need to update "my_app/config/build.yml".
Now everytime you call script/run or script/build it will load the correct files.

AIR apps depends of a descriptor file, inside the "my_app/descriptor.xml" you can define things like window size, chrome, app name and etc. Open this file and customize it at your taste.

You will work most of time in app folder and only thing you need to know is HTML/CSS and Javascript. You will also need to know how AIR api works, and recommend these links:

 * [Adobe AIR 1.5](http://help.adobe.com/en_US/AIR/1.5/devappshtml/index.html)
 * [Adobe AIR language reference](http://help.adobe.com/en_US/AIR/1.5/jslr/)
 * [Adobe AIR Developer center](http://www.adobe.com/devnet/air/ajax/quickstart/)

## Who is behind

I ([Daniel Lopes](http://areacriacoes.com.br)) did this project with only goal to help me to be more productive in my AIR apps ([see Pomodo](http://pomodo.areacriacoes.com.br/)) and avoid some repetitive decisions about organization.
For now this project not try to be a framework or anything like that, it is just a bunch of generators and binary files to help my day to day development. If you like to use it and want help will be very wellcome.