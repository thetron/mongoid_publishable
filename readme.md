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

    is_scheduled?
    is_published?
    is_draft?
    schedule!(date_time)
    publish!
    unpublish!

Additionally, you get a couple of scopes to help find what you're
looking for:

    ModelName.scheduled # returns all scheduled models (published_at is
in the future)
    ModelName.published # returns all published models
    ModelName.drafts # returns all unpublished models

'Scheduled' objects are those with `published_at` dates in the future, 'Published' objects are those with `published_at` dates in the past and 'Drafts' are those with no `published_at` date set at all.

# What's next?

I'm currently working on adding some routing helpers and built in controllers to manage the publishing and unpublishing of objects, so that all you need to do is add the links to a page.