
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

    $('body').on('submit', '#subscribe', function(e){
        e.preventDefault();
        $(".loadrequest").css("display","flex");
        $(".subscribe_msg").html("");
        $('#btn-subs').prop("disabled", true);
        var form = $(this);
        $.ajax({
            type: "post",
            url:  'Process/subscribe',
            data: form.serialize(),
            success : function(response){
                var data = JSON.parse(response);
                if(data.status=="success"){
                    $(".tb-my-input").val("");
                    $("textarea").val("");
                }
                $(".subscribe_msg").html(data.msg).css("color",data.color);
                $(".loadrequest").css("display","none");
                $('#btn-subs').prop("disabled", false);
            },
            error : function(err){
                $(".loadrequest").css("display","none");
                alert("Sistem xətası");
                $('#btn-subs').prop("disabled", false);
            }
        });
        return false;
    });
</script>

<script type="text/javascript">
    var Swipes = new Swiper('.home-silder', {
        loop: true,
        autoplay: {
            delay: 5000,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
</script>

<!-- GetButton.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+994 51 340 55 15", // WhatsApp number
            call: "+994 50 450 01 07", // Call phone number
            call_to_action: "Salam Bizə yazın", // Call to action
            button_color: "#FF6550", // Color of button
            position: "right", // Position may be 'right' or 'left'
            order: "whatsapp,call", // Order of buttons
        };
        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /GetButton.io widget -->