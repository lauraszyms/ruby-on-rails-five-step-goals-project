$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){
      let $ol = $("div.goal_steps ol")
      let $p = $("div.goal_steps p")
      let $href = $("a.load_goal_steps")
      $ol.html("")
      $href.hide()
      json.forEach(function(gs){
       let newGoal = new GoalStep(gs.id, gs.title, gs.summary, gs.status, gs.main_goal.id)
      $ol.append('<li><a class="load_goal_step" href="http://localhost:3000/main_goals/1/goal_steps/1">' + newGoal.title + '</a></li>');
      })
    })
     e.preventDefault();
  })

$(document).on('click', '.load_goal_step', function (e) {
  $.get(this).then(function(json) {
    let $h1 = $("div.goal_step_info h1")
    let $h3 = $("div.goal_step_info h3")
    let $p = $("div.goal_step_info p")
    $h1.html("")
    $h3.html("")
    $p.html("")
    let newStep = new GoalStep(json.id, json.title, json.summary, json.status, json.main_goal.id)
    $h1.append(newStep.title)
    $h3.append(newStep.status)
    $p.append(newStep.summary)
  })
  e.preventDefault();
})

  class GoalStep {
   constructor (id, title, summary, status, main_goal_id) {
    this.id = id;
    this.title = title;
    this.summary = summary;
    this.status = status;
    this.main_goal_id = main_goal_id;
  }

   showGoal() {
    return 'http://localhost:3000/main_goals/1/goal_step/1'
    }
  };


});
