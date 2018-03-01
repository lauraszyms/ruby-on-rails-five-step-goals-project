$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){

      var $ol = $("div.goal_steps ol")
      $ol.html("")
      json.forEach(function(gs){
       let newGoal = new GoalStep(gs.id, gs.title, gs.summary, gs.status)
      $ol.append('<li><a href="' + newGoal.stepLink + '">' + newGoal.title + '</a></li>');
      })
    })


    e.preventDefault();
  })

  class GoalStep {
   constructor (id, title, summary, status) {
    this.id = id;
    this.title = title;
    this.summary = summary;
    this.status = status;
   }

   stepLink(){
     return `main_goal_goal_step_path(${this.id})`;
   };
  };


});
