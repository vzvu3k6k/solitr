beforeEach ->
  @oldRootElement = App.rootElement
  App.rootElement = '#konacha'

afterEach ->
  App.rootElement = @oldRootElement
