<%@ Page Language="C#" AutoEventWireup="true" CodeFile="part_5.aspx.cs" Inherits="part_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
        #content{
            width: 960px;
/*          padding: 5px;*/
            padding-left: 20px;
        }
        table{
            width: 960px;
            text-align: center;
        }
        table td{
            padding: 0px;
            width: 14.2%;
            height: auto;
        }
        table img{
            width: auto;  
            height: auto;  
            max-width: 100%;  
            max-height: 100%;   
        }
        #span_a_1 {
            display:inline;
            color:red;
        }
        #span_a_2 {
            display:inline;
            color:red;
        }
        #span_a_3 {
            display:inline;
            color:red;
        }
        #span_a_4 {
            display:inline;
            color:red;
        }
        #span_a_5 {
            display:inline;
            color:red;
        }
        #span_a_6 {
            display:inline;
            color:red;
        }
        #span_a_7 {
            display:inline;
            color:red;
        }
        #span_a_8 {
            display:inline;
            color:red;
        }
        #span_a_9 {
            display:inline;
            color:red;
        }
        #span_a_10 {
            display:inline;
            color:red;
        }
        #span_a_11 {
            display:inline;
            color:red;
        }
        #span_a_12 {
            display:inline;
            color:red;
        }
        #span_a_13 {
            display:inline;
            color:red;
        }
        #span_a_14 {
            display:inline;
            color:red;
        }
        #span_a_15 {
            display:inline;
            color:red;
        }
        #span_a_16 {
            display:inline;
            color:red;
        }
        #span_a_17 {
            display:inline;
            color:red;
        }
        #span_a_18 {
            display:inline;
            color:red;
        }
        #span_a_19 {
            display:inline;
            color:red;
        }
        #span_a_20 {
            display:inline;
            color:red;
        }
        #content{
            line-height: 30px;
            text-indent : 2em;
            text-align : justify;
            font-size: 16px;
        }
         .btn-two {
            color: white;   
            padding: 15px 25px;
            display: inline-block;
            border: 1px solid rgba(0,0,0,0.21);
            border-bottom-color: rgba(0,0,0,0.34);
            text-shadow:0 1px 0 rgba(0,0,0,0.15);
            box-shadow: 0 1px 0 rgba(255,255,255,0.34) inset, 
                              0 2px 0 -1px rgba(0,0,0,0.13), 
                              0 3px 0 -1px rgba(0,0,0,0.08), 
                              0 3px 13px -1px rgba(0,0,0,0.21);
        }

        .btn-two:active {
            top: 1px;
            border-color: rgba(0,0,0,0.34) rgba(0,0,0,0.21) rgba(0,0,0,0.21);
            box-shadow: 0 1px 0 rgba(255,255,255,0.89),0 1px rgba(0,0,0,0.05) inset;
            position: relative;
        }

        .btn.red, .btn-two.red{background-color: #fa5a5a;}

        .btn.mini, 
        .btn-two.mini, 
        .btn-gradient.mini, 
        .btn-effect.mini {
          padding: 4px 12px;  
          font-size: 12px;
        }
        .btn-two.yellow {background-color: #f0d264;}
    </style>
    <script src="./jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#transfer').bind("click", function () {
                click_end_time = new Date().getTime();
                var chazhi = (click_end_time - click_start_time) / 1000;
                if (chazhi <= 1) {
                    alert("你是否没载入视频？或者没有看完视频？或者跳着观看？请完整观看完视频。");

                    return;
                }
                window.parent.postMessage('paer_5_finish == true', '*');
            });
        })

        var click_start_time;
        var click_end_time;


        function randomNum(minNum, maxNum) {
            switch (arguments.length) {
                case 1:
                    return parseInt(Math.random() * minNum + 1, 10);
                    break;
                case 2:
                    return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10);
                    break;
                default:
                    return 0;
                    break;
            }
        }

        window.onload = function () {
            click_start_time = new Date().getTime();
            var btnLoad = document.getElementById('btnLoad');
            // 视频元素
 
            var img_refresh = document.getElementById('img_refresh');
            // 视频元素
            var tr_1 = document.getElementById('tr_1');

            img_refresh.addEventListener('click', function () {
                for (i = 0; i < 7; i++) {
                    var tr_1_change_id = randomNum(1, 105);
                    document.querySelector("#tr_1").children[i].children[0].src = "./train_img/old_people/" + tr_1_change_id + '.jpg';
                }
            })

            //var file_no = "${sessionScope.file_no}";
            
            var file_no = "<%=get_file_no_result_part_5()%>"; 
            var user_id = "<%=get_user_id()%>"; 
            var file_no_split = file_no.split(',');
            //alert(file_no_split);
            for (var i = 0; i < file_no_split.length - 1; i++) {
            {
                var id = "span_a_" + file_no_split[i];
                
                
                $('#' + id).css("display", "none"); 
                }
            }
            for (var i = 1; i <= 20; i++) {
                var show_filename = "";
                var show_id = "span_" + i.toString() + "_show_filename";
                show_filename = user_id + '_' + i.toString() + ".json";
                $('#' + show_id).text(show_filename);
            }
            
            //alert(file_no_split.length - 1);
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
            <h2>Part 5</h2>
            <p>Part 5部分是培训的最后一部分内容，完成此部分学习您就可以开始标注。让我们一起来了解下本次的“老人表情数据集”标注工作。</p><br>
            <h2 style="margin-right: 5px;">老人表情数据集标注工作介绍</h2><br>
            <h3 style="margin-right: 5px;">1. 数据集与标签</h3>
            <p>如果您学习过《模式识别》课程，您一定能理解数据集与标签的含义。简单地说，标签是描述一组数据（图像、声音、视频、信息）的规范化的属性集合。举个例子，我们在看一张人脸图像时，常常不自觉地就会给它打上标签。比如下面这张图片，你是否会这样描述它呢：<span style="font-weight: bold;color:red;">男、戴围巾、头发稀疏、白色肤色</span>。因此你就给它打上了<span style="font-weight: bold;color:red;"><性别、是否戴围巾、头发状态、肤色></span>的标签。</p>
            <div  style="text-align:center;"><img width="300" src="./train_img/img1.jpg"></div>         
            <p>这就是标签。具体到本次数据集标注工作，我们要给图像打上的标签就是<span style="font-size: 24px;font-weight: bold;color:red;"> 表情 </span>。</p>
            <p>在心理学界共识中，人类具有以下六种基本的表情：高兴、悲伤、惊讶、厌恶、恐惧、生气。当然还有一种人平静状态时的表情：中性，它不属于以上任何一种表情。</p>
            <ul>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">高兴（happiness）</li>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">悲伤（sadness）</li>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">惊讶（surprise）</li>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">厌恶（disgust）</li>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">恐惧（fear）</li>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">生气（anger）</li>
                <li style="margin: 5px 0 5px 50px;font-weight: bold;">中性（neutral）</li>
            </ul>
            <p>请注意：您在打表情标签时只能选择其中七种表情中的一种，不能多选。</p><br>
            <p>了解完标签之后，下面我们来了解下本次要标注的“老人表情数据集”。下面图片就来自于本次要标注的“老人表情数据集”。请试着观察它们并给它们打上表情标签。你可以点击此按钮来刷新图片。<button id="img_refresh" type="button" class="btn-two yellow mini"> 点击刷新图片 </button></p>
            <table>
                <tr id="tr_1">
                    <td><img src="./train_img/old_people/1.jpg"></td>
                    <td><img src="./train_img/old_people/2.jpg"></td>
                    <td><img src="./train_img/old_people/3.jpg"></td>
                    <td><img src="./train_img/old_people/4.jpg"></td>
                    <td><img src="./train_img/old_people/5.jpg"></td>
                    <td><img src="./train_img/old_people/6.jpg"></td>
                    <td><img src="./train_img/old_people/7.jpg"></td>
                </tr>
            </table> 
            <p>如你所见，该数据集的图片都是老人，这会对表情标注带来困难，请您应用前面所学及自己的经验，尽可能识别每一张图像的表情。当然，如果您还没有把握开始工作，您可以重新学习我们的培训材料，或者自己寻找材料学习。如果您在标注过程中，发现有的老人人脸图像实在是无法辨认出他/她的表情，请选择标注选项中的<span style="font-weight: bold;color:red;"> 无法辨认标注选项(uncertain) </span>。如果您在标注过程中，发现有的人脸图像图片质量很差，存在<span style="font-weight: bold;color:red;"> 不是真实人脸、严重遮挡（挡住眼或口）、严重模糊、侧脸（看不到另一只眼）、（人脸严重溢出边框）、其他 </span>等现象的劣质图像，请选择<span style="font-weight: bold;color:red;"> 劣质图像标注选项(poor-quality-image) </span>。</p>
            <br><h3 style="margin-right: 5px;">2. 标注网站介绍</h3>
            <p>本视频介绍如何使用此标注网站，观看此视频将极大提升你的标注效率。请不要倍速/快进/跳跃播放此视频。</p>
            <iframe height=540 width=960 src='http://player.youku.com/embed/XNDQzNzUwNjE5Ng==' frameborder=0 allowfullscreen=1></iframe>
            <br><br>
            <h3 style="margin-right: 5px;">3. 下载配置文件</h3>
            <p>现在，你可以按照视频指示，下载配置文件开始标注了。请点击链接下载配置文件，在标注时按照视频中的指示使用。</p><br>
            <div> 
                 <p><asp:Button ID="download_Button1" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_1.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_1_show_filename"></span><span id ="span_a_1">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button2" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_2.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_2_show_filename"></span><span id ="span_a_2">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button3" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_3.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_3_show_filename"></span><span id ="span_a_3">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button4" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_4.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_4_show_filename"></span><span id ="span_a_4">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button5" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_5.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_5_show_filename"></span><span id ="span_a_5">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button6" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_6.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_6_show_filename"></span><span id ="span_a_6">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button7" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_7.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_7_show_filename"></span><span id ="span_a_7">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button8" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_8.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_8_show_filename"></span><span id ="span_a_8">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button9" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_9.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_9_show_filename"></span><span id ="span_a_9">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button10" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_10.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_10_show_filename"></span><span id ="span_a_10">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button11" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_11.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_11_show_filename"></span><span id ="span_a_11">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button12" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_12.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_12_show_filename"></span><span id ="span_a_12">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button13" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_13.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_13_show_filename"></span><span id ="span_a_13">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button14" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_14.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_14_show_filename"></span><span id ="span_a_14">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button15" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_15.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_15_show_filename"></span><span id ="span_a_15">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button16" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_16.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_16_show_filename"></span><span id ="span_a_16">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button17" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_17.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_17_show_filename"></span><span id ="span_a_17">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button18" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_18.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_18_show_filename"></span><span id ="span_a_18">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button19" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_19.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_19_show_filename"></span><span id ="span_a_19">【您还未标注此部分，请下载】</span></p>
                 <p><asp:Button ID="download_Button20" runat="server" Text="点击下载配置文件" class="btn-two yellow mini" CommandArgument="_20.zip" onclick ="download_Button_click" type="button"/>-->下载配置文件--><span id ="span_20_show_filename"></span><span id ="span_a_20">【您还未标注此部分，请下载】</span></p>

            </div><br>
            <p>在每一个配置文件压缩包中有一个配置文件，它对应到一组需要标注的老人图像，约100张。按照我们的估计，标注员完成每一个配置文件的标注大约需要15分钟左右，请您自己掌握好时间，每次标注载入一个配置文件。一旦加载配置文件，中途关闭浏览器将无法保存你的标注进度。请特别注意：<span style="font-weight: bold;color:red;"> 勿对配置文件做包括重命名、修改内容、另存为在内的任何更改，否则将无法正常导入 </span>。另外，正如视频里所说的，在每次标注完一个配置文件后，<span style="font-weight: bold;color:red;"> 别忘了保存标注结果的csv文件，并上传到服务器中 </span>。</p><br>
            <p>至此，您已完成所有培训，可以开始标注。请你加入微信群，并向管理员反应任何你在标注过程中遇到的问题。我们也会在群里分享更多的表情识别相关资料。</p>
            <div  style="text-align:center;"><img width="300" src="./erweima.png"></div><br>
            <button id="transfer" class="btn-two red mini">保存进度并开始标注</button>
        </div>
     </form>
</body>
</html>
