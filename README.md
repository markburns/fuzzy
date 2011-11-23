Tired of bugs because of typos?

Let fuzzy come to the rescue

METHOD MISSING?
---------------

NOPE!
=====

```ruby
class Account
  include Fuzzy

  def pay! other_account, amount
    other_account.balance += amount
    balance -= amount
  end
end

jeff = Account.find 1
a = Account.find 123
a.balance
#=> 10.0

a.paid? jeff, 10
#=> 0.0
```

What could possibly go wrong?
=============================

Nothing! No more pesky exceptions, no more whiny ruby interpreter incapable
of making sensible guesses about what you actually meant.


Come on Ruby! Use some common sense.

