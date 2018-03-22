//-----------------------------------------------------------------------------
// Corona HTML5 Window Size Plugin
// (c)2018 C. Byerley (develephant)
//-----------------------------------------------------------------------------
window.windowSize_js = 
{
  getSize: function (prop) {
    const win = window;

    if (prop == undefined) {
      var sizes = {
        innerHeight:  win.innerHeight,
        innerWidth:   win.innerWidth,
        outerHeight:  win.outerHeight,
        outerWidth:   win.outerWidth,
        screenLeft:   win.screenLeft || win.screenX,
        screenTop:    win.screenTop || win.screenY
      }
    
      return sizes; 
    } else {
      //firefox check
      if (prop == 'screenLeft') {
        return win.screenLeft || win.screenX;
      }

      if (prop == 'screenTop') {
        return win.screenTop || win.screenY;
      }

      return win[prop];
    }
  
    return 0;
  }
};
