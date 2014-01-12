(function() {
  var Navigation, root;

  root = typeof exports !== "undefined" && exports !== null ? exports : this;

  Navigation = (function() {
    function Navigation() {}

    Navigation.prototype.log = function(msg) {
      return alert("Nav Says" + msg);
    };

    return Navigation;

  })();

  if (!root.Navigation) {
    root.Navigation = Navigation;
  }

}).call(this);
