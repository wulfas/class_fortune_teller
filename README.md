## Fortune Teller

Our very first Rails app. Our goal will be to allow the user to take two actions:

### Go to `/lucky_numbers`

When users go to `/lucky_numbers`, they should see their five lucky numbers for the day. These numbers will be randomly chosen.

### Go to `/zodiacs/:sign`

Add a list of nav links to `/zodiacs/leo`, `/zodiacs/cancer`, etc.

Make those routes work to display individual fortunes.

### Accessing the Data

I've already prepared a list of signs for you.

You have access to a class called `Zodiac` that I have created (don't worry about how it works for now - assume it is pulling data from an API or a CSV).

You can do `Zodiac.all` to retrieve an `Array` of zodiac `Hash`es:

    2.1.3 :001 > Zodiac.all
     =>
    [
      {
        :creature => "ram",
        :sign => "aries",
        :fortune => "As your professional dreams unfold, Aries, you may worry about the downside. First, there are new responsibilities that you might doubt your ability to fulfill. Second, you might be catapulted into an uncomfortable new realm of office politics. Don't let these matters put a damper on your enthusiasm. You have what it takes to fulfill the first concern and the wisdom to avoid the second. Onward and upward."
      },
      {
        :creature => "bull",
        :sign => "taurus",
        :fortune => "Recent spiritual breakthroughs might have you feeling both exhilarated and downcast, Taurus. Your sensitive side tells you that this is a definite step forward on your spiritual path, but the logical side might cause you to doubt its reality. Take comfort in the fact that reality is relative and that what you're sensing is at least valid for you. Then keep moving ahead."
      },
      {
        :creature => "twins",
        :sign => "gemini",
        :fortune => "Many of your personal goals have either been met or are in progress, Gemini, and you're feeling exhilarated. However, people around you might have their hands out. You may be asked to contribute to charities or make personal loans to people you don't know well. You want to help whenever you can, but be discriminating about whom you help now. Some may be less than trustworthy."
      },
      ...

As you can see, each zodiac `Hash` has three keys -- `:creature`, `:sign` and `:fortune`.

You can look up single row by any key by using the `.find_by` method:

    2.1.3 :002 > Zodiac.find_by({ :sign => "leo" })
     =>
    {
      :creature => "lion",
      :sign=>"leo",
      :fortune=>"Success on all levels is filling your life and making you feel absolutely wonderful, Leo. The downside of this is that you might be a little too conscientious. Are you putting in a lot of extra hours? Be discriminating about this and don't work harder than necessary. You could get stressed to the point of taxing your strength too much, and that won't help you. Pace yourself."
    }

or

    2.1.3 :002 > Zodiac.find_by({ :creature => "lion" })
     =>
    {
      :creature => "lion",
      :sign=>"leo",
      :fortune=>"Success on all levels is filling your life and making you feel absolutely wonderful, Leo. The downside of this is that you might be a little too conscientious. Are you putting in a lot of extra hours? Be discriminating about this and don't work harder than necessary. You could get stressed to the point of taxing your strength too much, and that won't help you. Pace yourself."
    }
