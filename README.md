METHOD MISSING?
---------------

NOPE!
=====

![](http://static.fjcdn.com/comments/Nope.+Chuck+Testa+_3e6d9d5f7240274f268d7359b559da6b.jpg)

Tired of bugs because of typos?

Let fuzzy come to the rescue

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

