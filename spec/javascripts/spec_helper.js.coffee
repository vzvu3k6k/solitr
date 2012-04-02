setup ->
  @oldRootElement = App.rootElement
  App.rootElement = '#konacha'

teardown ->
  App.rootElement = @oldRootElement
