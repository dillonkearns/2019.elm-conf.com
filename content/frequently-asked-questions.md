---
{
    "title": "Frequently Asked Questions"
}
---

# Frequently Asked Questions

## Travel and Venue

elm-conf will take place on September 12, 2019 at St. Louis Union Station in St. Louis, MO.
We are returning as a Strange Loop pre-conference event, and attendees are welcome at the Strange Loop party at City Museum during the evening of the 12th.
We encourage you to attend Strange Loop as well as elm-conf.
If you like one you'll probably like the other!

[Get tickets to either elm-conf or Strange Loop on Strange Loop's registration site](https://thestrangeloop.com/register.html).

## Accessibility

Union Station conference facilities are ADA compliant and wheelchair accessible. If you have any questions about accessibility, please contact [elm-conf@thestrangeloop.com](mailto:elm-conf@thestrangeloop.com).

## Flights to St. Louis

[St. Louis Lambert International Airport (STL)](https://www.flystl.com/) is the closest airport to the venue.
They publish a [full list of carriers that fly into St. Louis](https://www.flystl.com/flights-and-airlines/airlines).

For international travel, most carriers will go through immigration and customs at Chicago O'Hare with a connection to St. Louis.

From the airport, here are some ways you can to the hotels and conference venue:

- [Metrolink Train](http://www.metrostlouis.org/fares-and-passes/) ([$4](http://www.metrostlouis.org/fares-and-passes/)). Disembark at the Union Station Stop.
- Lyft ($32-36). Get updated estimates at [Lyft's Fare Estimator](https://www.lyft.com/fare-estimate).
- Taxi (~$60)

## Staying in St. Louis

Hotel stays can be booked in the Strange Loop blocks at Union Station (~10 minute walk) or the Ballpark Hilton (~15 minute walk.)
See [their hotel page](https://thestrangeloop.com/register.html) for more details.
Strange Loop will provide shuttle service from Union Station and Hilton Ballpark to the conference and party.

Some nice restaurants in downtown St. Louis:

- Bailey's Range (Hamburgers, vegetarian options available)
- Mango (Peruvian, vegetarian options available)
- Pappy's Smokehouse (Barbecue)
- Pi (Pizza, vegan options available)
- Rooster (Brunch, vegetarian options available)
- Schlafly Taproom (American Pub, vegetarian options available)
- Sen Thai (Thai, vegetarian options available)
- Small Batch (American, all-vegan menu)
- Sugarfire (Barbecue)

The closest grocery story and pharmacy to the venue and hotels is [Culinaria at 9th and Olive](https://goo.gl/maps/p8yYc4xUZoM2).

## Conference Party

elm-conf attendees are invited to attend the Strange Loop conference party at [City Museum](https://www.citymuseum.org/) the night of September 12.

City Museum is a giant playground for all ages.
There are giant slides, stories-high jungle gyms, caves, and a schoolbus balanced from the roof.
If you want to explore, we'd recommend wearing sturdy shoes and pants.
That said, City Museum is an accessible venue with elevators to all levels (including the roof.)

Snacks and non-alcoholic drinks will be provided at the party, but we'd encourage you to get dinner beforehand.

## Dress Code

elm-conf does not specify a formal dress code.
Wear whatever you're comfortable with as long as it doesn't violate the [code of conduct](https://thestrangeloop.com/policies.html).

In past years, people have dressed roughly from [casual](https://en.wikipedia.org/wiki/Casual) to [business casual](https://en.wikipedia.org/wiki/Business_casual).
If you're a first-time conference-goer and nervous about what to wear, business casual is a safe bet.

The weather in September in St. Louis is unpredictable.
Pack for a variety of weather conditions, and check the forecast before you leave!

## The Elm community

### What's this Slack everyone is talking about? Can I get in on that?

It's the Elm Slack!
You can join by [entering your email on the inviter page](http://elmlang.herokuapp.com/).

There's probably going to be a lot of chatter in the `#conferences` channel during the conference, including folks making meal plans.
It's worth your time!

### Why are people avoiding the word "components"?

Since "component" means "stateful component" or "React component" to many people, it's generally easier to communicate if we avoid using this term when we mean "a smaller part of a larger application."
Try using "widget" or "doodad" instead.

### What's "the core team"?

It's a small group of people who work together to advance Elm, and who are taking personal responsibility for the future of the language.

### What's "make impossible states impossible"?

"Make impossible states impossible" is a variation on "make illegal states unrepresentable" introduced by [Richard Feldman in his 2016 elm-conf talk](https://www.youtube.com/watch?v=IcgmSRJHu_8).
It generally means modeling an application to minimize situations which don't make sense for the situation.
For example, if a number must always be present you'd use `Int` instead of `Maybe Int`, since `Nothing` wouldn't make sense if it's always required.
