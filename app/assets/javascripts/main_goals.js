$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {
    $.ajax({
      method: "GET"
      url:
    }).done(function(data){
      console.log(data)
    })

    alert("It's working!")
    e.preventDefault();
  })
})
