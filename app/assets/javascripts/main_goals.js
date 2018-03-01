$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){

      var $ol = $("div.goal_steps ol")
      $ol.html("")
      json.forEach(function(goal_step){
      $ol.append("<li>" + goal_step.stepLink + "</li>")
      })
    })


    e.preventDefault();
  })

  class GoalStep {
   constructor (id, summary, status, main_goal_id) {
    this.id = id;
    this.summary = summary;
    this.status = status;
    this.main_goal_id = main_goal_id;
   }

   stepLink = function(){
     return `link_to ${this.name}, main_goal_goal_step_path(${this.id});`
   };
  };


});
