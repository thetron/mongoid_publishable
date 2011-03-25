# Mongoid Publishable

Make no mistakes - this is a simple gem. Turned out
[we](http://involved.com.au) use this sort of behaviour _a lot_ on our
projects, so just broke out into a gem for simplicity.

## What does it do?

The gem add some fields, scopes and methods to your models which you
want to be able to publish and unpublish. You know, things like blog
posts and junk like that.

## Getting started

Add the gem to your Gemfile:

    gem 'mongoid_publishable'

And update your bundle:

    $ bundle update

## Installation

In your model just add the following line, like you would with any
other mongoid model extension:

    include Mongoid::Publishable

## Putting it to good use

Your models will now have a `published_at` date as well as these
instance methods (they should be self-explanatory):

    is_published?
    is_draft?
    publish!
    unpublish!

Additionally, you get a couple of scopes to help find what you're
looking for:

    ModelName.published # returns all published models
    ModelName.drafts # returns all unpublished models
