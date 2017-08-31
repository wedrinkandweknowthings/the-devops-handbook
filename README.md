## Welcome to the Devops Handbook

### About this project

There are so many projects & products out there solving the same basic problems in many different ways.

We found ourselves often having to start from scratch each time, often going down the same blind alleys until we remember the gotchas, or just constantly reinventing the wheel in slightly different ways.

We've used so many tools & services in the past it's hard to keep track of which of them are best for what situations.  Sometimes the tools or particular command line switches needed when investigating edge cases come into use so rarely they're easily forgotten.

We wanted to produce a handbook for solving common problems in the most efficient "Good enough" way as possible.

### What do we mean by "Good enough"?

By good enough we mean good enough for real products, in real production environments, used and supported by real people.

- Scalable solutions
- Automate everything
- Secure from outside threats
- Minimise administration & overhead
- Choose practicality over perfection

### Our aims

- Any best practice examples in this handbook should support [The twelve factor app](https://12factor.net/).  Although we'll likely have a few examples on how to deal with apps not built this way.
- Any recommendations in this handbook should be entirely objective.  No tech cults to be found here please.
- Use [The Scientific Method](https://en.wikipedia.org/wiki/Scientific_method) wherever possible.
- Recognise things change, and what was true last week isn't necessarily true this week.
- Be prepared to admit we're wrong!  There's always a better way and we're hoping by open sourcing this we'll find those better ways.

#### How we plan to achieve this

- If we say something is faster / more scalable, we should include enough information to repeat the performance tests we did.  Preferably by providing scripts to repeat the test.
- If we dismiss a tool, we'll include reasons why.  Later versions of the tool might resolve things!
- Always state versions of software used.  Sometimes a tool will be dismissed because of a restriction which is removed in a later version.
- Include a datestamp on pages when undergoing a major revision
- Reduce assumptions.  If for example we'll say we need to change settings for performance, we'll aim to show what happens to performance before and after this setting is changed.
- we :heart: containers.  They should make our examples very easy to follow regardless of your platform, and very easy to tweak when you want to try out different versions of software.

### Contributing

Please do!  Just follow our aims above, and send a pull request when you'd like us to fold in your changes.

If you've got make & docker installed you can easily build and serve a local version of this site by just running

`make`

in the root of this project.

You'll find your local copy of the docs at http://localhost:4000, and it should update with any changes without you having to re-run the make command.


## Contents

- [Setting up your AWS network](core/setting-up-your-aws-network.md)