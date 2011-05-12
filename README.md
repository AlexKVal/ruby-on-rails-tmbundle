#Rails TextMate Bundle

##Description

Features I've added to the bundle include:

####Shoulda Support
 * Full shoulda support WITHOUT having to swap your active bundle.  This allows you to continue using the Rails bundle, but still all the advantages of my Shoulda bundle:
   * syntax highlighting, 
   * ability to run tests and contexts from textmate
   * shoulda snippets and commands
   * <code>⌘⇧+T</code> lists shoulda tests / contexts

####Other Changes
 * <code>⌥+␣</code> (option + spacebar) shows methods for a class or instance.  (Simulates autocomplete of more powerful IDEs)
 * <code>⌥+:</code> aligns code (ie if you have a hash on multiple lines, you can easily align all the keys with the first key)
 * <code>⌥⇧+M</code> opens a window of recent migrations with links to open the migration file
 * <code>⌥⇧+L</code> lets you easily  open or tail rails logs (development, test, production) 
 * <code>rest⇥</code> - snippets for rest named routes (you'll never need to pull out that rest cheatsheet again!)
 * <code>⌘⇧+T</code> lists factory names (when file includes Factory Girl definitions)
 * <code>Fac ⇥</code> allows searching of all factories definitions and inserts selected factory as a snippet (assumes your factories are in your test/factories/ dir)
 * Command to convert move :table, :column, :after => :another_column into the proper migration format with the column type
 * Lots of other rails snippets: Rails.root, asserts, scopes, etc.  
 
##Installation

1. $ `cd ~/Library/Application\ Support/TextMate/Bundles/`
2. $ `git clone git://github.com/phuibonhoa/ruby-on-rails-tmbundle.git Rails.tmbundle`
3. $ `osascript -e 'tell app "TextMate" to reload bundles'`

If you'd like to install all my bundles, check out this [script](http://gist.github.com/443129) written by [mkdynamic](http://github.com/mkdynamic).  It installs all bundles and backups any existing bundles with conflicting names.  Thanks Mark!

####My Other Textmate Bundles
My bundles work best when use in conjunction with my other bundles:

 * Rails - [http://github.com/phuibonhoa/ruby-on-rails-tmbundle](http://github.com/phuibonhoa/ruby-on-rails-tmbundle)
 * Ruby - [http://github.com/phuibonhoa/ruby-tmbundle](http://github.com/phuibonhoa/ruby-tmbundle)
 * Shoulda - [http://github.com/phuibonhoa/ruby-shoulda-tmbundle](http://github.com/phuibonhoa/ruby-shoulda-tmbundle)
 * HAML - [http://github.com/phuibonhoa/handcrafted-haml-textmate-bundle](http://github.com/phuibonhoa/handcrafted-haml-textmate-bundle)
 * Sass - [http://github.com/phuibonhoa/ruby-sass-tmbundle](http://github.com/phuibonhoa/ruby-sass-tmbundle)
 * JavaScript - [http://github.com/phuibonhoa/Javascript-Bundle-Extension](http://github.com/phuibonhoa/Javascript-Bundle-Extension)
 * CTags - [http://github.com/phuibonhoa/tm-ctags-tmbundle](http://github.com/phuibonhoa/tm-ctags-tmbundle)

##Credits


![BookRenter.com Logo](http://assets0.bookrenter.com/images/header/bookrenter_logo.gif "BookRenter.com")

Additions by [Philippe Huibonhoa](http://github.com/phuibonhoa) and funded by [BookRenter.com](http://www.bookrenter.com "BookRenter.com").


Original bundle and it's contributors can be found [here](http://github.com/drnic/ruby-on-rails-tmbundle)
