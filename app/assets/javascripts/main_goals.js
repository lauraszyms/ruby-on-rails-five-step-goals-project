let main_id= 0;

$(document).ready(function(){
  $("a.load_goal_steps").on("click", function(e) {


    $.get(this.href).then(function(json){
      let $ol = $("div.goal_steps ol")
      let $p = $("div.goal_steps p")
      let $href = $("a.load_goal_steps")
      $ol.html("")
      $href.hide()
      // $p.append(())
      json.forEach(function(gs){
       let newGoal = new GoalStep(gs.id, gs.title, gs.summary, gs.status, gs.main_goal.id)
      $ol.append('<li><a class="load_goal_step" href="http://localhost:3000/main_goals/1/goal_steps/1">' + newGoal.title + '</a></li>');
      })
    })
     e.preventDefault();
  })

  $(document).on('click', '.load_categories', function (e) {

    $.get(this.href).then(function(json){

      let $ol = $("div.categories ol")
      let $ul = $("div.category_goals ul")
      $ol.html("")
      $ul.html("")
      let goals = []
      json.forEach(function(c){
       let newCategory = new Category(c.id, c.name, c.main_goals)
       goals.push(c.main_goals)
       $ol.append('<li><a class="load_category" id="' + c.id + '"href="">' + newCategory.name + '</a></li>');
     })
     $(document).on('click', '.load_category', function (e) {
       let main_id = parseInt(this.id)
        goals.forEach(function(goal_array) {
          goal_array.forEach(function(goal){
            if (goal.id === main_id) {
          $ul.append('<li>' + goal.title + '</li>')
         }
        })
      })
      e.preventDefault();
     })

  })
  e.preventDefault();
})

$(document).on('click', '.load_goal_step', function (e) {
  $.get(this).then(function(json) {
    let $h1 = $("div.goal_step_info h1")
    let $h3 = $("div.goal_step_info h3")
    let $h4 = $("div.goal_step_info h4")
    $h1.html("")
    $h3.html("")
    $h4.html("")
    let newStep = new GoalStep(json.id, json.title, json.summary, json.status, json.main_goal.id)
    $h1.append(newStep.title)
    $h3.append(newStep.status)
    $h4.append(newStep.summary)
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

  class Category {
   constructor (id, name, main_goals) {
    this.id = id;
    this.name = name;
    this.main_goals = main_goals;
  }

   mainGoals() {
     const map1 = this.main_goals.map(x => x * 2)
    return 'http://localhost:3000/main_goals/1/goal_step/1'
    }
  };

// function goalStepForm() {
//     return '<form> <textarea></textarea> <input type="submit"/> </form>'
//   }
//
});
//
// $(function(){
//   $(".edit_main_goal").on("submit", function(e){
//
//     $.ajax({
//       type: "POST",
//       url: this.action,
//       data: this.serialize(),
//       success: function(response) {
//         console.log(response)
//       }
//
//     })
//
//     e.preventDefault();
//   })
// })
