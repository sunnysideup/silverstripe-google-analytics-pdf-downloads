<!-- Google Tag Manager -->
<script nonce='$nonce'>
;(function (w, d, s, l, i) {
  w[l] = w[l] || []
  w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' })
  var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s),
    dl = l != 'dataLayer' ? '&l=' + l : ''
  j.async = true
  j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl
  f.parentNode.insertBefore(j, f)
})(window, document, 'script', 'dataLayer', '$GTMCode')
</script>
<!-- End Google Tag Manager -->

<script  nonce='$nonce'>
  dataLayer.push({'event': 'pdf_load'});
</script>

<script>
window.addEventListener(
    "gaTagFired",
    function(){
        const urlAdd = new URLSearchParams(window.location.search).get('q');
        const fileURL = '/assets/'+urlAdd+'.pdf';

        const date = new Date();
        let timestamp = date.getUTCFullYear().toString();
        //+1 because of 0-indexed months
        timestamp += (date.getUTCMonth()+1).toString().padStart(2, "0");
        timestamp += date.getUTCDate().toString().padStart(2, "0");
        timestamp += date.getUTCHours().toString().padStart(2, "0");
        window.location.replace(fileURL+"?"+timestamp);
    }
);

// Backup timeout in case gaTagFired doesn't fire
window.addEventListener(
    "load",
    function(){
        window.setTimeout(
            function(){
                const urlAdd = new URLSearchParams(window.location.search).get('q');
                const fileURL = '/assets/'+urlAdd+'.pdf';

                const date = new Date();
                let timestamp = date.getUTCFullYear().toString();
                //+1 because of 0-indexed months
                timestamp += (date.getUTCMonth()+1).toString().padStart(2, "0");
                timestamp += date.getUTCDate().toString().padStart(2, "0");
                timestamp += date.getUTCHours().toString().padStart(2, "0");
                window.location.replace(fileURL+"?"+timestamp);
            },
            1000
        );
    }
);

</script>
