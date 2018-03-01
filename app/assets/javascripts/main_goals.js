$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.ajax({
      method: "GET",
      url: this.href
    }).done(function(resp){
      $("div.goal_steps").append(resp)
    })


    e.preventDefault();
  })
})
