$(document).ready(function(){
                  $( ".quote blockquote p" ).fadeIn( 3000, function(){
                                                      $( ".quote > blockquote > cite" ).hide().fadeIn( 500 );
                                                      });
                  $( "nav[role=navigation]" ).mouseover( function(){
                                                    $( this ).css( "margin-top", 0 );
                                                    })
                  .mouseleave( function(){
                             $( this ).css( "margin-top", -40 );
                             });
                  setTimeout(function() {
                             $( ".notification" ).fadeOut().empty();
                             }, 5000);

                  });