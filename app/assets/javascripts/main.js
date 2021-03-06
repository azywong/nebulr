$(function(){
  $('.question_text').on("swiperight", answerQuestion)
  $('.question_text').on("swipeleft", nextQuestion)
  $('.question_text').on("swipedown", questionInfo)
})

var answerQuestion = function(event){
  $('.question_yes').addClass("fade")
  window.location.replace( $('.question_yes a').attr('href') );
}

var nextQuestion = function(){
  $('.question_no').addClass("fade")
  window.location.replace( $('.question_no a').attr('href') );
}

var questionInfo = function(){
  $('.question_info').addClass("fade")
  window.location.replace( $('.question_info a').attr('href') );
}