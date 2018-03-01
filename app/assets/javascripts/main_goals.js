$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){
      var $ol = $("div.goal_steps ol")
      $ol.html("")
      json.forEach(function(goal_step){
        $ol.append("<li>" + goal_step.title + "</li>")
      })
    })


    e.preventDefault();
  })
})
