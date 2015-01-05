

// jQuery(document).ready(function($) {

//     var w =
//     {
//         x: $(window).width(),
//         y: $(window).height()
//     };

//     var callbacks =
//     {
//         windowSize: function() {
//             //believe width is the same as outerWidth for the window.
//             w.x = $(window).width();
//             w.y = $(window).height();
//         },
        
//         scrollFix: function() {
//             var scr_t = $(window).scrollTop(); //probably just "window" calls this
//             var scr_b = scr_t + w.y;
//             $(".scroll").each(function(i, e){ 
//             //should filter to iterate only over elements that pass the first check (is anything visible)
//                 //first ancestor with class .scroll-outer

                
//                 //get height of outer element just once
//                 var $e = $(e);
//                 var e_top = $e.offset().top;
//                 var e_height = $e.outerHeight(false); //no margins
//                 var e_bottom = e_top + e_height;
//                 var scr;
//                 if (scr_b > e_top)
//                 {
//                     if (scr_t > e_bottom)
//                     {
//                         scr = 2;
//                     }
//                     else
//                     {
//                         scr = 1;
//                     }
//                 }
//                 else 
//                 {
//                     scr = 0;
//                 }
//                 $e.toggleClass("scr2", (scr == 2));
//                 $e.toggleClass("scr1", (scr == 1));
//                 $e.toggleClass("scr0", (scr == 0));
                

//             });
//         }
//     };
    
    
//        /*****RUNTIME*****/
    
//     $(window).resize(callbacks.windowSize);
//     $(window).resize(callbacks.scrollFix);
//     $(window).scroll(callbacks.scrollFix);
//     callbacks.scrollFix(); //initialize
    
// });

