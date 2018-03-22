//-----------------------------------------------------------------------------
// Corona HTML5 Window Size Plugin
// (c)2018 C. Byerley (develephant)
//-----------------------------------------------------------------------------
window.windowSize_js = 
{
  getInfo: function () {
    const win = window;
  
    var sizes = {
      innerHeight:  win.innerHeight,
      innerWidth:   win.innerWidth,
      outerHeight:  win.outerHeight,
      outerWidth:   win.outerWidth,
      screenLeft:   win.screenLeft || win.screenY,
      screenTop:    win.screenTop || win.screenX
    }
  
    return sizes; 
  }
};
