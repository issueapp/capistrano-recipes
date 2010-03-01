Capistrano-receipe
==================

Sweet set of capistrano recipes that makes things sweeter, 

 * faster deploy (similar to github git deployment strategy)
 * deployment with bundler
 * remote rake task invocation, console, log streaming



Install
--------------------
  
Required gems

  * capistrano
  * capistrano-ext (for multi stage deployment)

Specify git branch in your deploy file

    set :branch, "origin/master"
  

Example
--------------------

Remote command

    cap production remote bundle install

Remote rake invocation

    cap production rake db:migrate

Log streaming

    cap production log
    
Remote console

    cap production console



Copyright (c) 2009 Idealian Pty Ltd, released under the MIT license
