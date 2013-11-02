window.SplitTest ||=
  initialize: ->
    console.log "Now split testing!"
    $("#split-test-button").on('click', SplitTest.post)

  testData: ->
    $("#split-test-button").data()

  post: ->
    obj    = SplitTest
    params =
      test_name:   obj.testData().testname,
      test_value:  obj.testData().testvalue,
      request_url: document.URL

    $.post("/test_results",
      params,
      ((data,textStatus,jqXHR) -> console.log(data)))
