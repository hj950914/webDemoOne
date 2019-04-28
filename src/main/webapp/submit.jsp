<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name=​"apple-touch-fullscreen" content=​"yes">
    <meta content="target-densitydpi=device-dpi,width=640,user-scalable=no" name="viewport">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/submit.js"></script>
    <title>摇一摇</title>
</head>
<body>

    <div class="content-box">


        <!--prize pop-up content end-->

        <!--succeed pop-up content start-->
        <div>
            <div class="pop-up rule-box">
                <%--<a href="#" class="rule-close"></a>--%>
                <h2>成功提交！</h2>
                <p>${name}</p>
                <p>${phone}</p>
                <p>${address}</p>
                <br/>
                <br/>
                <%--<p>赶快点击分享跟小伙伴们炫耀一下吧。</p>--%>
                <br/>
                <br/>
                <br/>
                <a href="page" class="btn again" style="margin-right:20px;">再玩一次</a>
                <%--<a href="#" class="btn share">&nbsp;&nbsp;&nbsp;分享&nbsp;&nbsp;&nbsp;</a>--%>
            </div>
        </div>


    </div>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            //overlay
            $(".helf").on("click", function () {
                $("#overlay-help").show();
            });
            $(".rule-close,.btn").on("click", function () {
                $("#overlay-help,#overlay-prize,#pop-succeed").hide();
            });

            $(".service").on("click", function () {
                $("#overlay-prize").show();
            });
            $("#submit-btn").on("click", function () {
                $("#overlay-prize").hide();
                $("#pop-succeed").show();
            });
            $(".again").on("click", function () {
                $("#pop-succeed").hide();
            });
            $(".share").on("click", function () {
                $("#pop-succeed").hide();
                $("#pop-share").show();
            });
            $("#pop-share").on("click", function () {
                $(this).hide();
            });


        }());


    </script>
</body>
</html>