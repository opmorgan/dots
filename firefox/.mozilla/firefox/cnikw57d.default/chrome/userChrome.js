
(function() {

  const navbox = document.getElementById("nav-bar");
  const mypage = "file:///home/om/dev/startpage/build/index.html";

  var removefocus = "no";
  var clearlocationbar = "no";

  aboutNewTabService.newTabURL = mypage;

  var customNewTab = () => {
    if (removefocus == "yes") {
      setTimeout(() => {
        gBrowser.selectedBrowser.focus();
      }, 0);
    }
    if (clearlocationbar == "yes") {
      setTimeout(() => {
        if (gBrowser.selectedBrowser.currentURI.spec == mypage) {
          window.document.getElementById("urlbar").value = "";
        }
      }, 100);
    }
  }

  gBrowser.tabContainer.addEventListener("TabOpen", customNewTab, false);

})();

