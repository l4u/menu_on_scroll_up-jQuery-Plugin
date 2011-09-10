$ = jQuery
$.fn.menu_on_scroll_up = () ->
  current_top = 0
  $this = $(this)
  el_h = $this.outerHeight()
  $(window).scroll (event) -> 
    last_top = current_top
    current_top = $(document).scrollTop()

    /* for fixing the bouncing at the top edge in Mac */
    if current_top < 0
      current_top = 0

    diff = current_top - last_top 
    to_top = parseInt($this.css('top'), 10) - diff
    if to_top < -el_h 
      to_top = -el_h
    else if to_top > 0
      to_top = 0
    $this.css 'top', to_top
