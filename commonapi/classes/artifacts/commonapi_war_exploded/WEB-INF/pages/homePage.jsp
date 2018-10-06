<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

<head>
    <style>
        body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
            margin: 0;
            padding: 0;
        }
        body, legend, .W_input:focus, .S_txt1, .W_btn_b, .SW_fun .S_func1 {
            color: #333;
            text-decoration: none;
        }
        a, .S_link1, a.S_txt1:hover, a.current .S_txt1, a.S_txt2:hover, .SW_fun:hover .S_func1 {
            color: #eb7350;
        }
        a {
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        a {
            /* color: #eb7350; */
            text-decoration: none;
        }
        h1, h2, h3, h4, h5, h6 {
            font-size: 100%;
            font-weight: normal;
        }
        body {
            font: 12px/1.3 Arial,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            overflow-x: hidden;
            color: #333;
            -webkit-font-smoothing: antialiased;
        }
        address, caption, cite, code, dfn, em, th, var, i {
            font-style: normal;
            font-weight: normal;
        }
        ol, ul {
            list-style: none;
        }
        .S_txt2, .W_input, .W_btn_b_disable, .W_btn_b_disable:hover {
            color: #919191;
            text-decoration: none;
        }
        .FRAME_main{
            overflow-y:scroll;
        }
        .SO_miniblog {
            background: url(https://img.t.sinajs.cn/t6/skin/skin021/images/body_bg.jpg?id=14109430471133) no-repeat top center;
            padding-top: 50px;
        }
        .clearfix {
            display: block;
        }
        .SO_frame {
            background-color: rgba(98,77,39,0.25);
            width: 1000px;
            min-height: 680px;
            margin: 0 auto;
            padding: 16px 0 0 0;
            word-spacing: -0.43em;
            font-size: 0;
            letter-spacing: -0.31em;

        }
        .SO_frame #plc_main {
            width: 850px;
            display: inline-block;
        }
        .SO_main_l {
            width: 150px;
        }
        .SO_frame_a, .SO_frame_a_fix, .SO_frame_b, .SO_frame_c, .SO_frame_d, .SO_main_l, .SO_main_c, .SO_main_r, .SO_main_cr, .SO_main_a, .SO_toptips {
            display: inline-block;
            letter-spacing: normal;
            word-spacing: normal;
            vertical-align: top;
            font-size: 12px;
        }
        .B_discover .SO_frame_c, .SO_main_c {
            width: 600px;
            margin-right: 10px;
        }
        .W_fr {
            float: right;
        }
        .W_ficon {
            font-family: "wbficonregular" !important;
            display: inline-block;
            -webkit-font-smoothing: antialiased;
        }
        .W_fl {
            float: left;
        }
        .layer_menu_list {
            position: absolute;
            background: #fff;
            color: #333;
            border: 1px solid #ccc;
            border-radius: 2px;
            padding: 2px;
            box-shadow: 0px 2px 8px 1px rgba(0,0,0,0.2);
            display: none;
        }
        .screen_box :hover .layer_menu_list{
            display: block;
        }
        .layer_menu_list ul {
            margin: 0;
            padding: 0;
            clear: both;
        }
        .layer_menu_list ul li {
            position: static;
            float: none;
            margin: 0;
            padding: 0;
        }
        .layer_menu_list ul li a {
            white-space: nowrap;
            min-width: 50px;
            padding: 7px 13px;
            color: #333;
            display: block;
            cursor: pointer;
            text-decoration: none;
        }
        .SO_notes {
            margin: -17px 0 10px;
            padding: 7px 0 0;
            background: #fff8bf;
        }
        .SO_notes a, .SO_notes .wrap {
            display: block;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #eb7350;
        }
        .SO_cardwrap {
            margin: 0 0 10px 0;
            box-shadow: 0 0 2px rgba(0,0,0,0.2);
            border-radius: 2px;
        }
        .SO_feed .SO_cardwrap {
            margin-bottom: 10px;
        }
        .SO_feed_like .SO_feed_detail {
            position: relative;
        }
        .SO_feed_v3 .SO_feed_detail {
            padding: 20px 20px 4px;
        }
        .SO_feed_v3 .SO_face {
            position: relative;
        }
        .SO_feed_v3 .SO_info {
            margin-bottom: 7px;
        }
        .SO_feed_v3 .SO_from {
            margin-bottom: 2px;
        }

        .SO_feed_v3 .SO_text {
            margin-bottom: 2px;
            padding-bottom: 0;
        }
        .SO_feed_v3 .SO_media_wrap {
            margin-top: 5px;
            margin-bottom: 6px;
        }

        .SO_feed_v3 .SO_media_wrap .media_box {
            font-size: 0;
        }
        .SO_feed_v3 .SO_feed_spec {
            width: 100%;
            height: auto;
            border: none;
            box-shadow: none;
            border-radius: none;
        }
        .SO_feed_v3 .SO_feed_spec_info {
            width: 368px;
            height: 87px;
            padding: 13px 16px 0;
        }

        .SO_feed_spec_info {
            position: relative;
            float: right;
            width: 202px;
            height: 88px;
            padding: 7px 4px 5px 10px;
        }
        .SO_feed_spec_info .SO_feed_spec_cont .SO_feed_spec_tit {
            font-weight: 700;
            width: 100%;
            margin: 0 0 6px;
        }

        .W_autocut {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal;
        }

        .SO_feed_v3 .SO_feed_spec_info .SO_feed_spec_cont .SO_feed_spec_brieftxt {
            line-height: 20px;
            height: 39px;
        }

        .SO_feed_spec_info .SO_feed_spec_cont .SO_feed_spec_brieftxt {
            line-height: 18px;
            height: 35px;
            overflow: hidden;
            margin-bottom: 9px;
            word-wrap: break-word;
        }
        .SO_feed_v3 .SO_feed_spec_info .SO_feed_spec_cont .SO_feed_spec_tit {
            font-size: 14px;
        }
        .SO_feed_v3 .SO_media_a, .SO_feed_v3 .SO_pic_fold, .SO_feed_v3 .sinanews, .SO_feed_v3 .SO_feed_spec, .SO_feed_v3 .SO_feed_spec_red2015, .SO_feed_v3 .SO_card_list {
            font-size: 12px;
        }
        .SO_media_wrap .media_box {
            float: left;
            margin: 0 0 0 10px;
        }

        .SO_media_wrap {
            margin: 2px 0 8px -10px;
        }

        .SO_text {
            padding: 1px 0 3px;
            overflow: hidden;
            line-height: 23px;
            word-wrap: break-word;
        }
        .SO_text .SO_text_opt {
            display: inline-block;
            margin-left: 5px;
        }
        .SO_info {
            margin: 0 0 3px;
            padding: 5px 0 0;
        }
        .SO_face {
            width: 50px;
        }
        .W_face_radius {
            border-radius: 50%;
        }

        .SO_face .face img {
            width: 50px;
            height: 50px;
        }
        .SO_detail {
            margin-left: 60px;
        }
        .SO_feed_vipcover .SO_feed_detail {
            position: relative;
            padding-top: 16px;
            background-repeat: no-repeat;
            background-position: right top;
            background-size: 600px;
        }
        .SO_feed_detail {
            padding: 10px 16px 10px 10px;
        }
        .SO_feed_handle .SO_handle {
            overflow: hidden;
        }

        .SO_feed_handle .SO_row_line {
            border-top-width: 1px;
            border-top-style: solid;
        }

        .S_line2 {
            border-color: #f2f2f5;
        }

        .SO_row_line {
            margin: 0 0 0 -1px;
            zoom: 1;
        }
        .SO_row_line a {
            display: block;
            margin: 0 0 0 1px;
            padding: 1px 0;
            text-align: center;
        }

        .SO_row_line .pos {
            display: block;
            margin-left: -1px;
        }

        .SO_row_line .line {
            display: block;
            height: 22px;
            margin: 7px 0;
            border-left-width: 1px;
            border-left-style: solid;
            line-height: 22px;
        }

        .SO_row_line .line span .W_ficon {
            font-size: 15px;
            vertical-align: top;
        }

        .SO_row_line .line span em, .SO_row_line .line span i {
            margin-left: 2px;
            margin-right: 3px;
        }

        .SO_row_r4 li {
            width: 25%;
        }

        .SO_row_line li {
            float: left;
            height: 38px;
        }
        .SO_starcover {
            position: absolute;
            top: 0;
            right: 43px;
            width: 120px;
            height: 36px;
        }
        .SO_vipcover a, .SO_starcover a {
            display: block;
            width: 100%;
            height: 100%;
            overflow: hidden;
            cursor: pointer;
            text-indent: -600px;
        }
        .SO_screen .screen_box {
            position: absolute;
            margin: -10px 0 0 -27px;
        }
        .SO_screen .screen_box .W_ficon {
            width: 41px;
            height: 16px;
            padding: 4px 0 6px 0;
            text-align: center;
            font-size: 18px;
        }
        .SO_screen .screen_box .layer_menu_list {
            right: 16px;
            top: 22px;
        }
        .S_bg2, blockquote, .W_btn_b, .W_input, .SW_fun_bg {
            background-color: #fff;
        }
        body, legend, .W_input:focus, .S_txt1, .W_btn_b, .SW_fun .S_func1 {
            color: #333;
            text-decoration: none;
        }
        .S_ficon, .S_ficon_dis, a.S_ficon_dis:hover, a:hover .S_ficon_dis {
            color: #6582ab;
        }
        .S_line1, .W_btn_prev, .W_btn_next, .W_btn_b {
            border-color: #d9d9d9;
        }
        .W_f14 {
            font-size: 14px;
        }
        .W_f18 {
            font-size: 18px;
        }
        .W_fb {
            font-weight: 700;
        }
        .clearfix {
            display: block;
        }

        .clearfix:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }
        .S_bg1, .SW_fun_bg:hover, .SW_fun_bg_active {
            background-color: #f2f2f5;
        }
        .SO_feed_spec_pic {
            position: relative;
            float: left;
            width: 100px;
            height: 100px;
            overflow: hidden;
            vertical-align: middle;
            text-align: center;
        }
        .face_card_wb {
            display: inline-block;
            width: 100%;
            height: 100%;
            background: url(../../../images/face/face_card_wb.png) center center no-repeat #c7cbda;
            overflow: hidden;
        }
        .v6_pl_leftnav_group{
            z-index: 10;
            transform: translateZ(0px);
            position: relative;
            transition: margin-top 0.3s ease 0s;
            will-change: margin-top,top;
            width: 150px;
        }
        .v6_pl_leftnav_group {
            position: fixed;
            top: 60px;
        }
        .SO_left_nav .lev_Box h3 {
            display: block;
            height: 34px;
            line-height: 34px;
            font-size: 14px;
            font-weight: bold;
            text-decoration: none;
            overflow: hidden;
        }
        .SO_left_nav .lev_Box h3.lev a {
            font-size: 14px;
            font-weight: bold;
            padding: 0 0 0 15px;
            height: 34px;
            line-height: 34px;
        }
        .SO_left_nav .lev a {
            display: block;
            height: 34px;
            line-height: 34px;
            font-size: 12px;
            padding: 0 0 0 13px;
            text-decoration: none;
            overflow: hidden;
            position: relative;
        }
        .SO_left_nav .lev a:hover, .WB_left_nav .lev_curr, .WB_left_nav .lev_curr:hover, .WB_left_nav .levmore .more {
            background-color: #bda883;
            background-color: rgba(255,255,255,0.2);
        }
        .SO_left_nav .S_txt1, .WB_left_nav a.S_txt1:hover, .WB_left_nav .S_ficon, .WB_left_nav a:hover .S_ficon, .WB_left_nav a.S_ficon:hover {
            color: #fff;
        }
        .lev_Box_noborder {
            border-bottom: none;
        }

        .SO_main_r {
            width: 230px;
            margin-right: 10px;
            position: relative;
            display: inline-block;
            letter-spacing: normal;
            word-spacing: normal;
            vertical-align: top;
            font-size: 12px;
        }
        .W_person_info {
            position: relative;
            height: 165px;
        }

        .W_person_info .cover {
            position: relative;
            height: 75px;
            background-repeat: no-repeat;
            z-index: 1;
        }

        .W_person_info .cover .headpic {
            width: 60px;
            height: 60px;
            padding: 3px;
            background: rgba(255,255,255,0.3);
            border-radius: 50%;
            position: absolute;
            bottom: -20px;
            left: 50%;
            margin-left: -30px;
        }
        .W_person_info .SO_innerwrap {
            padding: 16px 10px 9px;
        }

        .SO_innerwrap {
            padding: 16px;
        }

        .W_person_info .nameBox {
            height: 16px;
            line-height: 16px;
            padding-top: 5px;
            text-align: center;
        }

        .W_person_info .nameBox .name, .W_person_info .nameBox .W_icon, .W_person_info .nameBox .W_icon_yy, .W_person_info .nameBox .W_icon_vipstyle, .W_person_info .nameBox .W_icon_co1 {
            vertical-align: middle;
        }

        .W_person_info .nameBox .name {
            max-width: 114px;
            display: inline-block;
            overflow: hidden;
            font-size: 14px;
            font-weight: bold;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .user_atten {
            height: 34px;
            overflow: hidden;
            margin: 10px 0 0 0;
        }

        .user_atten li .S_txt2 {
            display: block;
            font-size: 12px;
        }

        .S_txt2, .W_input, .W_btn_b_disable, .W_btn_b_disable:hover {
            color: #919191;
            text-decoration: none;
        }

        .user_atten li {
            float: left;
            width: 65px;
            text-align: center;
            border-right-width: 1px;
            border-right-style: solid;
        }

        .user_atten li strong {
            display: block;
            font-weight: bold;
            line-height: 18px;
            width: 65px;
            overflow: hidden;
        }
        .lev {
            color: #fff;
        }

        .levtxt{
            display: inline-block;
            max-width: 82px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            cursor: pointer;
        }

        ::selection {
            background: #eb7350;
            color: #fff;
        }

    </style>
</head>

<body class="FRAME_main" style="">
<div class="SO_miniblog">
    <div class="SO_miniblog_fb">
        <div class="SO_main clearfix" id="plc_frame">
            <div class="SO_frame">
                <%--导航栏--%>
                <div class="SO_main_l" fixed-box=""true>
                    <div class="v6_pl_leftnav_group"><div style="visibility: hidden;"></div>
                        <div class="SO_left_nav SO_left_nav_Atest" node_type="groupList" fixed-item="true" fixed-id="22">
                            <div class="lev_Box lev_Box_noborder">
                                <h3 class="lev"><a href="${pageContext.request.contextPath}/admin/home/followBlogs" class="S_txt1 lev_curr" node-type="item" bpfilter="main" nm="status" suda-uatrack="key=V6update_leftnavigate&amp;value=homepage"><span class="levtxt">首页</span></a></h3>
                            </div>
                            <div class="lev_Box lev_Box_noborder">
                                <h3 class="lev"><a dot="pos55b9e09c8ae74" href="${pageContext.request.contextPath}/admin/home/followBlogs" class="S_txt1" node-type="item" bpfilter="main" suda-uatrack="key=V6update_leftnavigate&amp;value=collect"><span class="levtxt">我的收藏</span></a></h3>
                            </div>
                            <div class="lev_Box lev_Box_noborder">
                                <h3 class="lev"><a dot="pos55b9e0b0ca122" href="${pageContext.request.contextPath}/admin/home/followBlogs" class="S_txt1" node-type="item" bpfilter="main" suda-uatrack="key=V6update_leftnavigate&amp;value=like"><span class="levtxt">我的赞</span></a></h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="plc_main">
                    <%--正文--%>
                    <div class="SO_main_c">
                        <div id="v6_pl_content_homefeed">
                            <div class="SO_cardwrap SO_notes" id="home_new_feed_tip">
                                <a hrep="javascript:void(0);">有新微博，点击查看</a>
                            </div>
                            <div class="SO_feed SO_feed_v3 SO_feed_v4" pagenum="1" node_type="feed_list" unread_mode="1" >
                                <div mrid="rid=0_0_8_3071693780464606196_0_0" class="SO_cardwrap SO_feed_type S_bg2 SO_feed_vipcover SO_feed_like" action-type="feed_list_item">
                                    <div class="SO_feed_detail clearfix" node_type="feed_content" style="background-image: url(//img.t.sinajs.cn/t6/skin/public/feed_cover/star_279_pc_x2.png?version=201810041559)">
                                       <div class="SO_starcover">
                                           <a href="javascript:void(0)" ></a>
                                       </div>
                                        <div class="SO_screen W_fr" node_type="fl_screen_box">
                                            <div class="screen_box">
                                                <%--TODO:下拉菜单--%>
                                                <a href="javascript:void(0);" action-type="fl_menu"><i class="W_ficon ficon_arrow_down S_ficon">c</i></a>
                                                <div class="layer_menu_list" node-type="fl_menu_right" style="z-index: 999;">
                                                    <ul>
                                                        <li><a action-type="thrid_rend_iframe" href="javascript:void(0)" action-data="width=660&amp;height=556&amp;mid=4291396477104880&amp;src=%2F%2Fpromote.vip.weibo.com%2Fpromoteadvance%3Fdai_tou%3Dpc_feed_01%26touid%3D1664176597%26mid%3D4291396477104880&amp;title=推广" title="帮上头条">帮上头条</a></li>
                                                        <li><a action-type="feed_list_shield_by_rootmid" href="javascript:void(0)" title="屏蔽这条微博">屏蔽这条微博</a></li>
                                                        <li><a action-type="feed_list_shield_by_user" href="javascript:void(0)" title="屏蔽 证券时报网">屏蔽 证券时报网</a></li>
                                                        <li><a href="javascript:void(0)" title="用此卡片背景">用此卡片背景</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="SO_face W_fl">
                                            <div class="face">
                                                <a target="_blank" class="W_face_radius" suda-uatrack="key=feed_headnick&amp;value=pubuser_head:4291396477104880" href="/secutimes?refer_flag=0000015010_&amp;from=feed&amp;loc=avatar" title="证券时报网"><img usercard="id=1664176597&amp;refer_flag=0000015010_" title="证券时报网" alt="" width="50" height="50" src="//tvax1.sinaimg.cn/crop.155.95.310.310.180/633151d5ly8fu3j03idw9j20gk0ecade.jpg" class="W_face_radius"></a>
                                            </div>
                                        </div>
                                        <div class="SO_detail">
                                            <div class="SO_info">
                                                <a sudo-uatrack="key=feed_headnick&amp;value=pubuser_nick:4291396477104880" target="_blank" class="W_f14 W_fb S_txt1" nick-name="证券时报网" title="证券时报网" href="/secutimes?refer_flag=0000015010_&amp;from=feed&amp;loc=nickname" usercard="id=1664176597&amp;refer_flag=0000015010">证券时报网</a>
                                            </div>
                                            <div class="SO_from S_txt2">
                                                <a target="_blank" href="/1664176597/GClDFtOiQ?ref=home&amp;rid=0_0_8_3071693780464606196_0_0" title="2018-10-04 13:48" date="1538632113000" class="S_txt2" node-type="feed_list_item_date" suda-data="key=tblog_home_new&amp;value=feed_time:4291396477104880:frommainfeed">今天 13:48</a>
                                            </div>
                                            <div class="SO_text W_f14" node-type="feed_list_content">
                                                湖南省政府日前出台降低实体经济企业成本的八大举措，旨在不断优化发展环境，进一步降低企业成本，支持实体经济持续健康发展。 持续降低税费负担，包括扩大创业投资、天使投资税收优惠政策试点范围，将新能源汽车车辆购置税优惠政策延长至2020年12月31日，取消城市规划技术论证、日照分析、建设项目交 ​​​​...<a target="_blank" href="//weibo.com/1664176597/GClDFtOiQ" class="SO_text_opt" suda-uatrack="key=original_blog_unfold&amp;value=click_unfold:4291396477104880:1664176597" action-type="fl_unfold" action-data="mid=4291396477104880&amp;is_settop&amp;is_sethot&amp;is_setfanstop&amp;is_setyoudao">展开全文<i class="W_ficon ficon_arrow_down"></i></a>
                                            </div>
                                            <div class="SO_media_wrap clearfix" node-type="feed_list_media_prev">
                                                <div class="media_box">
                                                    <!--图片个数等于0，正常渲染卡片-->
                                                    <!--后台没有配置卡片，走默认卡片-->
                                                    <!-- DefaultCard -->
                                                    <div class="SO_feed_spec S_bg1 S_line1 clearfix" action-type="fl_jumpurl" action-data="url=http%3A%2F%2Ft.cn%2FEhivz1Y%3Fm%3D4291396477104880%26u%3D1664176597&amp;target=_blank">
                                                       <div class="spec_box clearfix">
                                                           <div class="SO_feed_spec_pic S_bg1">
                                                               <a href="http://t.cn/Ehivz1Y?m=4291396477104880&amp;u=1664176597" target="_blank"><i class="face_card_wb" title="默认图片"></i></a>
                                                           </div>
                                                           <div class="SO_feed_spec_info SW_fun">
                                                               <div class="SO_feed_spec_cont">
                                                                   <h4 class="SO_feed_spec_tit W_autocut"><a href="http://t.cn/Ehivz1Y?m=4291396477104880&amp;u=1664176597" class="S_func1 W_autocut" target="_blank">湖南八大举措为实体经济企业降低成本</a></h4>
                                                                   <div class="SO_feed_spec_brieftxt"><span class="S_txt2">据新华社消息，湖南省政府日前出台降低实体经济企业成本的八大举措，旨在不断优化发展环境，进一步降低企业成本，支持实体经济持续健康发展。 持续降低税费负担，包括扩大创业投资、天使投资税收优惠政策试点范围，将新能源汽车车辆购置税优惠政策延长至2020年12月31日，取消城市规划技术论证、日照分析、建设项目交通影响评价、工程竣工测量、建筑物定点放线、现状地形图等服务收费等。 措施还包括，对申请贷款保险的贫困县园区工业企业的贷款利息和保险费用最高给予80%的补贴；继续降低用工成本，阶段性降低企业职工基本养老保险；落实一般工商业电价减负10%的目标等。</span> </div>
                                                               </div>
                                                           </div>
                                                       </div>
                                                    </div>
                                                    <!-- /DefaultCard -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="SO_feed_handle">
                                        <div class="SO_handle">
                                            <ul class="SO_row_line SO_row_r4 clearfix S_line2">
                                                <li>
                                                    <a class="S_txt2" href="javascript:void(0);"><span class="pos"><span class="line S_line1"><span><em class="W_ficon ficon_favorites S_ficon">û</em><em>收藏</em></span></span></span></a>
                                                </li>
                                                <li>
                                                    <a class="S_txt2" href="javascript:void(0);"><span class="pos"><span class="line S_line1"><span><em class="W_ficon ficon_favorites S_ficon"></em><em>4</em></span></span></span></a>
                                                </li>
                                                <li>
                                                    <a class="S_txt2" href="javascript:void(0);"><span class="pos"><span class="line S_line1"><span><em class="W_ficon ficon_favorites S_ficon"></em><em>2</em></span></span></span></a>
                                                    <span class="arrow"><span class="W_arrow_bor W_arrow_bor_t"><i class="S_line1"></i><em class="S_bg1_br"></em></span></span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="SO_feed_repeat S_bg1" style="display: none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="SO_main_r" fixed-box="true">
                        <div id="v6_pl_rightmod_myinfo">
                            <div class="SO_cardwrap S_bg2">
                                <div class="W_person_info">
                                    <div class="cover" id="skin_cover_s" style="background-image: url(//img.t.sinajs.cn/t5/skin/public/covervip/2048_s.jpg?version=db6b7cc1992abf04)">
                                        <div class="headpic">
                                            <a bpfilter="page_frame" href="/2631918953/profile?rightmod=1&amp;wvr=6&amp;mod=personinfo" title="VidaWang在旅途中"><img class="W_face_radius" src=${user.userIcon} width="60" height="60" alt="VidaWang在旅途中"></a>
                                        </div>
                                    </div>
                                    <div class="SO_innerwrap">
                                        <div class="nameBox">
                                            <a bpfilter="page_frame" href="/2631918953/profile?rightmod=1&amp;wvr=6&amp;mod=personinfo" class="name S_txt1" title="VidaWang在旅途中">${user.userNickname}</a>
                                        </div>
                                        <ul class="user_atten clearfix W_f18">
                                            <li class="S_line1"><a bpfilter="page_frame" href="/2631918953/follow?rightmod=1&amp;wvr=6" class="S_txt1"><strong node-type="follow">${user.followingsCount}</strong><span class="S_txt2">关注</span></a></li>
                                            <li class="S_line1"><a bpfilter="page_frame" href="/2631918953/fans?rightmod=1&amp;wvr=6" class="S_txt1"><strong node-type="fans">${user.fansCount}</strong><span class="S_txt2">粉丝</span></a></li>
                                            <li class="S_line1"><a bpfilter="page_frame" href="/2631918953/profile?rightmod=1&amp;wvr=6&amp;mod=personnumbe" class="S_txt1"><strong node-type="weibo">${user.miniBlogCount}</strong><span class="S_txt2">微博</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
