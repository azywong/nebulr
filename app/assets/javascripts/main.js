$(function(){
  $('.question_yes').on("swiperight", answerQuestion)
  $('.question_no').on("swipeleft", nextQuestion)
})

var answerQuestion = function(event){
  $('.question_yes').addClass("swipeRight")
  window.location.replace( $(event.target).attr('href') );
}

var nextQuestion = function(){
  $('.question_no').addClass("swipeLeft")
  window.location.replace( $(event.target).attr('href') );
}