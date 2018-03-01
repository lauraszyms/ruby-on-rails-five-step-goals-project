$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.ajax({
      method: "GET",
      url: this.href
    }).done(function(resp){
      $("body").append(resp)
    })


    e.preventDefault();
  })
})
