var $theForm;

$('form').submit(function (event) {
  event.preventDefault();

  var dataForServer = $(this).serialize();

  $.ajax({
    url: '/users',
    method: 'post',
    data: dataForServer,
    dataType: 'json', // ask server to give us json
    success: function (dataFromServer) {
      $('body').append(
        $('<h2>').text("Thanks for signing up " + dataFromServer.username)
      )
    }
  })
});

// POST /users.json
// routes will then set :format to :json

// POST /users(.:format)
