<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=$GACode" nonce='$nonce'></script>
<script  nonce='$nonce'>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '$GACode');

  dataLayer.push({'event': 'PDF Load'});
</script>

<script>
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
