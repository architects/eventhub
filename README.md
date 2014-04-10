# EventHub

EventHub provides a central, globally accessible object to pipe all of
your event tracking calls to.  It provides a clean, declarative way of responding to 
these events with things like email or push notifications, calls to
external services, etc.

### Example

Where you might do...

```ruby
class User < ActiveRecord::Base
  after_create :send_email_notification
  after_create :send_push_notification

  def send_email_notification
    # Whatever you do
  end

  def send_push_notification
    # Whatever you do
  end
end
```

You can now do:

```ruby
class User < ActiveRecord::Base
  after_create :track_creation_event

  def track_creation_event
    EventHub.track(:creation, self)
  end
end

# config/initializers/event_hub.rb

EventHub.on(:creation).of(User) do |user|
  UserMailer.signup_email(user.id)
  UrbanAirship.register_device(user.apns_token)
end
```
