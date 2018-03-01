$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {

    $.ajax({
      method: "GET",
      url: this.href
    }).done(function(data){
      console.log(data)
    })

    alert("It's working!")
    e.preventDefault();
  })
})
