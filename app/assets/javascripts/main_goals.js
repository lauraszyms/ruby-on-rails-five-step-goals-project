$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    // $.ajax({
    //   method: "GET",
    //   url: this.href
    // }).done(function(resp){
    //   $("div.goal_steps").html(resp)
    // })

    $.get(this.href).success(function(json){
      $(div.goal_steps ol).html("")
    })


    e.preventDefault();
  })
})
