
<script>
    $(function() {
        $(".lazy").recliner({
            attrib: "data-src", // selector for attribute containing the media src
            throttle: 300,      // millisecond interval at which to process events
            threshold: 100,     // scroll distance from element before its loaded
            live: true          // auto bind lazy loading to ajax loaded elements
        });
    });
</script>

<script type="text/javascript">
    $('body').on('submit', '#contact-form', function(e){
        e.preventDefault();
        $(".loadrequest").css("display","flex");
        $(".msg").html("");
        var form = $(this);
        $.ajax({
            type: "post",
            url:  'Process/contactfrom',
            data: form.serialize(),
            success : function(response){
                var data = JSON.parse(response);
                if(data.status=="success"){
                    $(".tb-my-input").val("");
                    $("textarea").val("");
                }
                $(".msg").html(data.msg).css("color",data.color);
                $(".loadrequest").css("display","none");
            },
            error : function(err){
                $(".loadrequest").css("display","none");
                alert("Sistem xətası");
            }
        });
        return false;
    });
</script>

<script type="text/javascript">
    var Swipes = new Swiper('.home-silder', {
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
</script>