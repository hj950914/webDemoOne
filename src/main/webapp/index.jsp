<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
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
<div class="main">
    <div class="content-box">
        <!--help pop-up content start-->
        <div class="overlay" id="overlay-help">
            <div class="pop-up rule-box"><a href="#" class="rule-close"></a>
                <h2>活动规则</h2>
                <p>1.摇晃手机参与抽奖。</p>
                <p>2.每个用户有3次抽奖机会(李萌萌除外)。</p>
                <h2>奖项设置</h2>
                <p>特等奖:保密</p>
                <p>一等奖:苹果电脑（1台）</p>
                <p>二等奖:小米手机（3部）</p>
                <p>三等奖:鼠标（10个）</p>
                <br/>
                <br/>
                <a href="#" class="btn">我知道了</a></div>
        </div>
        <!--help pop-up content end-->
        <!--prize pop-up content start-->
        <div class="overlay" id="overlay-prize">
            <div class="prize-box">
                <div class="content"><a href="#" class="rule-close" style="top:-38px;"></a>
                    <p>人品大爆发，摇到了</p>
                    <p>iPhone5s一部，是不是好开</p>
                    <p>心呀，怒赞一个！</p>
                    <div class="intro clear"><img src="images/phone.png">
                        <div>
                            <h3>二等奖：手机</h3>
                            <span>领奖方式：在下方填写您的信</span><span>息，工作人员会尽快联系您的。</span></div>
                    </div>
                    <form action="SubmitServlet.action" method="post" id="mainSubmit">
                        <div class="info">
                            <h3>请输入个人信息：</h3>
                            <ul>
                                <li>
                                    <label>姓名</label>
                                    <input type="text" name="name" value="${name}">
                                </li>
                                <li>
                                    <label>手机</label>
                                    <input type="text" name="phone" value="">
                                </li>
                                <li>
                                    <label>地址</label>
                                    <input type="text" name="address">
                                </li>
                            </ul>
                            <div class="btn-box">
                                <%--<a type="submit" class="btn" id="submit-btn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>--%>
                                <%--<input type="submit" class="btn" id="submit-btn" value="提交1"/>--%>
                                <a href="javascript:submit1('<%=basePath%>')" class="btn" id="submit-btn">提交</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--prize pop-up content end-->

        <!--succeed pop-up content start-->
        <%--<div class="overlay" id="pop-succeed">
            <div class="pop-up rule-box"><a href="#" class="rule-close"></a>
                <h2>成功提交！</h2>
                <p>李艾</p>
                <p>15212593503</p>
                <p>上海市浦东新区川杨新苑</p>
                <br/>
                <br/>
                <p>赶快点击分享跟小伙伴们炫耀一下吧。</p>
                <br/>
                <br/>
                <br/>
                <a href="#" class="btn again" style="margin-right:20px;">再玩一次</a><a href="#" class="btn share">&nbsp;&nbsp;&nbsp;分享&nbsp;&nbsp;&nbsp;</a>
            </div>
        </div>--%>
        <!--succeed pop-up content end-->

        <!--share pop-up content start-->
        <div class="overlay" id="pop-share"><img src="images/430-290.png" class="share-pic"></div>
        <!--share pop-up content end-->

        <!--top-nav content start-->
        <%--头像--%>
        <div class="clear top-nav">
            <a href="#" class="lf helf"><img src="images/help.png"></a>
            <a href="" class="lr service">
                <img src="images/service.png"><span class="prize"></span>
            </a>
        </div>
        <!--top-nav content end-->
        <!--shake main content start-->
        <div class="shake-box">
            <div class="shake-no"><img src="images/shake-yes.gif"></div>
            <div class="shake-yes"><img src="images/shake-yes.gif"></div>
            <div class="btn-dynamic"><a href="#">3次(李萌萌无数次)</a></div>
        </div>
    </div>
    <!--shake main content end-->
    <!--footer content start
    <div class="footer"> Copyright  2014 By Digital Force Inc. 沪ICP<br/>All Rights Reserved.<br/>Digital Force 版权所有 </div>-->
</div>
<button onClick="playVid()" type="button" style="width:300px; height:200px; margin-bottom:30px;">播放视频</button>
<audio src="images/voice.mp3" controls preload="metadata" id="video1"
       style="display:none; visibility:hidden; width:0px; height:0px; background:none;"></audio>
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

        //此处的作用是:当点击头像时,跳到一个class为service的div布局
        /*$(".service").on("click", function () {
            $("#overlay-prize").show();
        });*/
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

    if (window.DeviceMotionEvent) {
        window.addEventListener('devicemotion', deviceMotionHandler, false);
    }


    var SHAKE_THRESHOLD = 300;
    var last_update = 0;
    var x, y, z, last_x, last_y, last_z;

    function deviceMotionHandler(eventData) {

        var acceleration = eventData.accelerationIncludingGravity;
        //alert(newDate().getTime());
        var curTime = new Date().getTime();

        // alert(curTime - last_update);
        if ((curTime - last_update) > 300) {

            var diffTime = curTime - last_update;
            last_update = curTime;

            x = acceleration.x;
            y = acceleration.y;
            z = acceleration.z;

            var speed = Math.abs(x + y + z - last_x - last_y - last_z) / diffTime * 10000;

            if (speed > SHAKE_THRESHOLD) {
                //$(".play").click();
                $("#overlay-prize").show();
                // 摇一摇执行播放那个函数
                playVid();
                //var myVideo=document.getElementById("video1");
                // myVideo.play();
            }
            last_x = x;
            last_y = y;
            last_z = z;
        }
    }

    function playVid() {
        $(document).on('touchstart', function () {
            myVideo.load()
        })
        var myVideo = document.getElementById("video1");
        myVideo.play();
    }

</script>
</body>
</html>