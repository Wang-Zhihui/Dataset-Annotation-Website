<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tutor.aspx.cs" Inherits="tutor" %>

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
    	a{
    		text-decoration: none;
    		color: black;
    	}
    	#all{
			width: 1200px;
			margin: 30px auto;
			/*float: left;*/
    	}

    	#left_nav{
    		width: 195px;
    		float: left;
    		border-right:5px solid #DDDDDD;
    		text-align: center;
    		font-size: 24px;
    		
    	}

    	#left_nav a{
    		display: block;
    		padding: 10px;
    	}

    	#right_content{
    		width: 1000px;
    		float: left;
            overflow: hidden;

    	}

    	.clr{
    		clear: both;
    	}

    	.test{
    		background: red;
    	}
    </style>

    <script src="./jquery.min.js"></script>
    <script type="text/javascript">

        function changeheight(){
            var ifm= document.getElementById("right_content");
            var srcValue = $('#right_content').attr('src');
            if(srcValue == 'part_1.html'){
                ifm.height=1000;
            }
            if(srcValue == 'part_2.html'){
                ifm.height=800;
            }
            if(srcValue == 'part_3.html'){
                ifm.height=800;
            }
            if(srcValue == 'part_4.html'){
                ifm.height=1000;
            }
            if(srcValue == 'part_5.aspx'){
                ifm.height=3700;
            }
            
        }

        window.onload =function() { 
            var tutor_1_mysql = <%=gettutor_1()%>; 
            var tutor_2_mysql = <%=gettutor_2()%>; 
            var tutor_3_mysql = <%=gettutor_3()%>; 
            var tutor_4_mysql = <%=gettutor_4()%>; 
            var tutor_5_mysql = <%=gettutor_5()%>; 
            
            

            var srcValue = $('#right_content').attr('src');
            $('#a_1').css("text-decoration","underline");
            $('#a_2').css("pointer-events","none");
            $('#a_3').css("pointer-events","none");
            $('#a_4').css("pointer-events","none");
            $('#a_5').css("pointer-events","none");
            if(tutor_1_mysql == 1){
                document.getElementById('right_content').src = 'part_2.html';
                $('#a_1').css("text-decoration","none");
                $('#a_2').css("text-decoration","underline");
                $('#a_1').css("pointer-events","auto");
                $('#a_2').css("pointer-events","auto");
            }
            if(tutor_2_mysql == 1){
                document.getElementById('right_content').src = 'part_3.html';
                $('#a_1').css("text-decoration","none");
                $('#a_2').css("text-decoration","none");
                $('#a_3').css("text-decoration","underline");
                $('#a_1').css("pointer-events","auto");
                $('#a_2').css("pointer-events","auto");
                $('#a_3').css("pointer-events","auto");
            }
            if(tutor_3_mysql == 1){
                document.getElementById('right_content').src = 'part_4.html';
                $('#a_1').css("text-decoration","none");
                $('#a_2').css("text-decoration","none");
                $('#a_3').css("text-decoration","none");
                $('#a_4').css("text-decoration","underline");
                $('#a_1').css("pointer-events","auto");
                $('#a_2').css("pointer-events","auto");
                $('#a_3').css("pointer-events","auto");
                $('#a_4').css("pointer-events","auto");
            }
            if(tutor_4_mysql == 1){
                document.getElementById('right_content').src = 'part_5.aspx';
                $('#a_1').css("text-decoration","none");
                $('#a_2').css("text-decoration","none");
                $('#a_3').css("text-decoration","none");
                $('#a_4').css("text-decoration","none");
                $('#a_5').css("text-decoration","underline");
                $('#a_1').css("pointer-events","auto");
                $('#a_2').css("pointer-events","auto");
                $('#a_3').css("pointer-events","auto");
                $('#a_4').css("pointer-events","auto");
                $('#a_5').css("pointer-events","auto");
            }
            if(tutor_5_mysql == 1){
                document.getElementById('right_content').src = 'part_5.aspx';
                $('#a_1').css("text-decoration","none");
                $('#a_2').css("text-decoration","none");
                $('#a_3').css("text-decoration","none");
                $('#a_4').css("text-decoration","none");
                $('#a_5').css("text-decoration","underline");
                $('#a_1').css("pointer-events","auto");
                $('#a_2').css("pointer-events","auto");
                $('#a_3').css("pointer-events","auto");
                $('#a_4').css("pointer-events","auto");
                $('#a_5').css("pointer-events","auto");
            }
         
        };

        addEventListener('message', e => {
            // e.data为子页面发送的数据
            if(e.data == 'paer_1_finish == true'){
		    	$('#a_2').css("text-decoration","underline");
                $('#a_1').css("text-decoration","none");
                $('#a_1').css("pointer-events","auto");
                document.getElementById('right_content').src = 'part_2.html';
                document.getElementById("Button_tutor_1").value = 1;
                var Button1 = document.getElementById("Button1");
                Button1.click();
            }
            if(e.data == 'paer_2_finish == true'){
                $('#a_3').css("text-decoration","underline");
                $('#a_2').css("text-decoration","none");
                $('#a_2').css("pointer-events","auto");
                $('#a_1').css("pointer-events","auto");
                document.getElementById('right_content').src = 'part_3.html';
                document.getElementById("Button_tutor_2").value = 1;
                var Button2 = document.getElementById("Button2");
                Button2.click();
            }
            if(e.data == 'paer_3_finish == true'){
                $('#a_4').css("text-decoration","underline");
                $('#a_3').css("text-decoration","none");
                $('#a_2').css("pointer-events","auto");
                $('#a_1').css("pointer-events","auto");
                $('#a_3').css("pointer-events","auto");
                document.getElementById('right_content').src = 'part_4.html';
                document.getElementById("Button_tutor_3").value = 1;
                var Button3 = document.getElementById("Button3");
                Button3.click();
            }
            if(e.data == 'paer_4_finish == true'){
                $('#a_5').css("text-decoration","underline");
                $('#a_4').css("text-decoration","none");
                $('#a_2').css("pointer-events","auto");
                $('#a_1').css("pointer-events","auto");
                $('#a_3').css("pointer-events","auto");
                $('#a_4').css("pointer-events","auto");
                document.getElementById('right_content').src = 'part_5.aspx';
                document.getElementById("Button_tutor_4").value = 1;
                var Button4 = document.getElementById("Button4");
                Button4.click();
            }
            if(e.data == 'paer_5_finish == true'){
                document.getElementById("Button_tutor_5").value = 1;
                var Button4 = document.getElementById("Button5");
                Button5.click();
            }
        })
	    
    </script>
</head>
<body>
    <form id="form1" runat="server">
	    <div id="all" runat="server">
            <input type="hidden" id="Button_tutor_1" runat="server"/>
            <input type="hidden" id="Button_tutor_2" runat="server"/>
            <input type="hidden" id="Button_tutor_3" runat="server"/>
            <input type="hidden" id="Button_tutor_4" runat="server"/>
            <input type="hidden" id="Button_tutor_5" runat="server"/>
            <input type="hidden" id="send_file_no_to_iframe" runat="server"/>
            <asp:Button ID="Button1" runat="server" Text="Button" style="display:none;" onclick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Button" style="display:none;" onclick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Button" style="display:none;" onclick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Button" style="display:none;" onclick="Button4_Click"/>
            <asp:Button ID="Button5" runat="server" Text="Button" style="display:none;" onclick="Button5_Click"/>
 		    <div style="text-align: center;margin: 10px 0px 30px 0px;"><h2>非常感谢您参与此次老人表情的标注任务,请跟随指导完成以下标注培训。</h2></div>
		    <div id="left_nav">
			    <a id="a_1" href="part_1.html" target="right_content">Part 1</a>
			    <a id="a_2" href="part_2.html" target="right_content">Part 2</a>
			    <a id="a_3" href="part_3.html" target="right_content">Part 3</a>
			    <a id="a_4" href="part_4.html" target="right_content">Part 4</a>
			    <a id="a_5" href="part_5.aspx" target="right_content">Part 5</a>
		    </div>
		    <iframe id="right_content" name="right_content" scrolling="no" src="part_1.html" frameborder="0" onload="changeheight()">
			
		    </iframe>
		    <!-- <div id="content">
    		
	    	    <div id="tutor_video">
	    		    <h3>Part 1</h3>
	    		    <span>请观看学习面部表情识别的视频，建议选择超清观看，请不要倍速/快进/跳跃播放。</span>
	    		    <iframe height=600 width=960 src='http://player.youku.com/embed/XNDQyMDEwNjI5Mg==' frameborder = 0 allowfullscreen = true></iframe>
	    	    </div>
	    	
	        </div> -->
	        <div class="clr"></div>
	    </div>
	</form>
    
</body>
</html>

