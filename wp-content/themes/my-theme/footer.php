<?php wp_footer(); ?>
</body>

<script type="text/javascript">
setTimeout(BrowserDetect, 1);

function BrowserDetect() {
    let userAgent = navigator.userAgent;
    let browserName;
    if (userAgent.match(/chrome|chromium|crios/i)) {
        browserName = "chrome";
    } else if (userAgent.match(/firefox|fxios/i)) {
        browserName = "firefox";
    } else if (userAgent.match(/safari/i)) {
        browserName = "safari";
    } else if (userAgent.match(/opr\//i)) {
        browserName = "opera";
    } else if (userAgent.match(/edg/i)) {
        browserName = "edge";
    } else {
        browserName = "No browser detection";
    }
    //console.log("Stai usando " + browserName);
    if (browserName != "chrome") {
        document.getElementById("pagina_chrome").remove();
    }
    if (browserName == "safari") {
        location.href = '/safari.php';
    }
}
</script>

</html>