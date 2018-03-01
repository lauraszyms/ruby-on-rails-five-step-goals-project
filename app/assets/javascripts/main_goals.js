$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){

      var $ol = $("div.goal_steps ol")
      $ol.html("")
      json.forEach(function(gs){
       let newGoal = new GoalStep(gs.id, gs.title, gs.summary, gs.status)
      $ol.append("<li>" + newGoal.stepLink + "</li>")
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
     return `link_to ${this.name}, main_goal_goal_step_path(${this.id});`
   };
  };


});
