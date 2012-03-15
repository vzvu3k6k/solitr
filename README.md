This is the source code for [solitr.com](http://www.solitr.com/).

## Testing

To run the test suite, type `bundle exec rake konacha:server` and point your
browser at the URL it prints. The test files are located in the
`spec/javascripts` directory.

There are not many tests yet, but we are adding them as we go. Probably the
easiest (and also most important) part to test is the data models, because they
don't interact with the DOM.

## Architecture

See [this post](http://www.solitr.com/blog/2012/02/mvc-design/) for a short
introduction to the code design.

## To-Do

* Make the mouse cursor a hand (`pointer` in CSS parlance) when hovering
  draggable cards or clickable elements.
