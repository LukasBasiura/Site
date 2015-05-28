jQuery ->
  $('#img').imagesLoaded ->
    $('#img').masonry itemSelector: ".box"
