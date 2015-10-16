// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');
mascotMessage = $('.mascot>h1');
welcome = $('body>h1')
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
welcome.css('color', 'blue');
welcome.css({'border': 'dashed', 'border-color':'orange'})
mascotMessage.html('Bobolinks')
//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.allaboutbirds.org/guide/PHOTO/LARGE/bobo_kurtkirchmeier2.jpg')
  })

 $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })


//RELEASE 6: Experiment on your own



//  $('img').on('click', function(){
//   $(this).animate({
//     height:"100px",
//     width:"100px"})
// })


 $('img').click(function(){
    $(this).animate({
    height:"20%",
    width:"20%",
   duration: "slow"});

  $(this).slideDown( "slow", function() {
    // Animation complete.
  });

    $(this).animate({
    height:"40%",
    width:"40%",
   duration: "slow"});

})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.
//REFELCTION:
//What is jQuery?
// jQuery is a library of features to be used with JavaScript.  It is basically a bunch of objects accessed with $( ). It's almost
// like pre-written code that you don't have to go create.
// What does jQuery do for you?
// It allows you to do active features like creating actions in response to events.  For example, 
// it can make something disappear or fade out when an event like hovering a mouse or clicking happens.
// What did you learn about the DOM while working on this challenge?
// That there are lots of quick things that can work without writing a whole bunch of code.
// Learning about JS as a library of objects that we have access to also helps me understand
// JS and objects to another level.  It can be fairly simple to implement "fancy" features on
// a website.












