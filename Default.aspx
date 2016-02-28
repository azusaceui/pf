<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE HTML>
<!-- saved from url=(0024)http://www.playfresh.cn/ -->
<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
     
<META charset="utf-8">     
<META http-equiv="X-UA-Compatible" content="IE=edge">     <!--<meta name="viewport" content="width=device-width, initial-scale=1">--> 
    
<META name="description" content="玩鲜产品页">     
<META name="keywords" content="玩鲜, 玩鲜APP, 玩鲜iOS, 玩鲜Android, 玩鲜客户端, 玩鲜任务, 玩鲜线路">  
   <TITLE>玩鲜</TITLE>     <LINK href="img/favicon.png" rel="icon" type="image/x-icon"> 
    <!-- Plugin CSS -->     <LINK href="玩鲜_files/animate.min.css" rel="stylesheet"> 
    <LINK href="玩鲜_files/jquery.fullPage.min.css" rel="stylesheet">     
<SCRIPT src="玩鲜_files/jquery.js"></SCRIPT>
     
<SCRIPT src="玩鲜_files/jquery.min.js"></SCRIPT>
     
<SCRIPT src="玩鲜_files/jquery.fullPage.min.js"></SCRIPT>
     <!-- Custom CSS-->     <LINK href="玩鲜_files/product-page.css" rel="stylesheet" 
type="text/css">     
<SCRIPT>
        $(document).ready(function () {
            $('#fullpage').fullpage({
                //Navigation
                anchors: ['app', 'introduction-1', 'ntroduction-2', 'ntroduction-3', 'ntroduction-4', 'download'],
                css3: true,
                'navigation': true,
                'navigationPosition': 'right',

                'afterLoad': function (anchorLink, index) {
                    //‘关于我们’按钮的颜色判定
                    if (index == 1 || index == 4) {
                        $('#about-us').removeClass('grey-surface').addClass('white-surface');

                    } else {
                        $('#about-us').removeClass('white-surface').addClass('grey-surface');
                    }

                    if (index == 6) {
                        $('.big-logo').addClass('animated rubberBand');
                    }
                }
            });
        });
    </SCRIPT>
 
<META name="GENERATOR" content="MSHTML 11.00.9600.18212"></HEAD> 
<BODY><A id="about-us" href="http://www.playfresh.cn/us.html">关于我们</A> 
<DIV id="fullpage">
<DIV class="section section0"><IMG class="title animated fadeIn" src="玩鲜_files/slogan.png"> 
        
<DIV class="db-group"><A class="download-button animated tada" href="https://itunes.apple.com/us/app/liu-lian-yong-xin-xian-qing/id1018136277?l=zh&amp;ls=1&amp;mt=8">iPhone版下载</A> 
            <A class="download-button animated tada" href="http://www.playfresh.cn/product/playfresh.apk">Android版下载</A> 
        </DIV><IMG class="app animated bounceInUp" src="玩鲜_files/ui_page.png">   
  </DIV>
<DIV class="section section1"><IMG class="img-center section1-img" src="玩鲜_files/pageone_image.png">
<DIV class="section1-text">
<H2 class="orange up">给力狂欢</H2>
<H3 class="deep-grey">玩趣味任务赢取惊喜厚礼</H3></DIV></DIV>
<DIV class="section section2"><IMG class="section2-img" src="玩鲜_files/pagetwo_image.png"> 
        
<DIV class="section2-text">
<H2 class="orange up">无限创意</H2>
<H3 class="deep-grey">主题线路体验精彩玩法</H3></DIV></DIV>
<DIV class="section section3">
<DIV class="section3-text">
<H2 class="white up">无需远行</H2>
<H3 class="white">优质小铺一触即达享乐活</H3></DIV><IMG class="section2-img" src="玩鲜_files/pagethree_image.png"> 
    </DIV>
<DIV class="section section4">
<H2 class="orange up">拒绝无聊</H2>
<H3 class="deep-grey">任务盒子开启城市游乐场</H3><IMG class="img-center section4-img" src="玩鲜_files/pagefour_image.png"></DIV>
<DIV class="section section5"><IMG class="big-logo" src="玩鲜_files/bg_2.0.png">   
      
<P class="intro">一键下载，娱乐嗨不停，带你开心带你飞！</P>
<DIV><A class="download-button-2 fadeIn" href="https://itunes.apple.com/us/app/liu-lian-yong-xin-xian-qing/id1018136277?l=zh&amp;ls=1&amp;mt=8">iPhone版下载</A> 
            <A class="download-button-2 fadeIn" href="http://www.playfresh.cn/product/playfresh.apk">Android版下载</A> 
        </DIV></DIV></DIV></BODY></HTML>
