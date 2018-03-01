$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){

      var $ol = $("div.goal_steps ol")
      $ol.html("")
      json.forEach(function(gs){
       let newGoal = new GoalStep(gs.id, gs.title, gs.summary, gs.status, gs.main_goal)
      $ol.append('<li><a class="load_goal_step" href="' + newGoal.stepLink + '">' + newGoal.title + '</a></li>');
      })
    })
     e.preventDefault();
  })

$(document).on('click', '.load_goal_step', function (e) {
    alert("It's Working!")
    e.preventDefault();
  })

  class GoalStep {
   constructor (id, title, summary, status, main_goal) {
    this.id = id;
    this.title = title;
    this.summary = summary;
    this.status = status;
    this.main_goal = main_goal;
   }

   stepLink(){
     return `main_goal_goal_step_path(${this.id})`;
   };
  };


});
