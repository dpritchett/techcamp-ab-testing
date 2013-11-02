window.SplitTest ||=
  initialize: ->
    console.log "Now split testing!"
    $("#split-test-button").on('click', SplitTest.post)

  post: ->
    obj    = SplitTest
    params =
      test_name:          obj.testData().testname,
      test_value:         obj.testData().testvalue,
      request_url:        document.URL,
      authenticity_token: obj.token(),

    $.post("/test_results",
      params,
      ((data,textStatus,jqXHR) -> console.log(data)))

  testData: ->
    $("#split-test-button").data()

  token: ->
    $("meta[name='csrf-token']").attr('content')
