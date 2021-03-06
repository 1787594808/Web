<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="renderer" content="webkit"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<head>
<style type="text/css" id="alertifyCSS"></style>
<title>企客宝客户管理系统-公海客户一览</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<link rel="stylesheet" href="../../static/css/vendor/bootstrap.min.css">
<link rel="stylesheet" href="../../static/css/vendor/alertify.min.css">
<link rel="stylesheet" href="../../static/css/vendor/toastr.min.css">
<link rel="stylesheet" href="../../static/css/vendor/bootstrap-treeview.min.css">
<link rel="stylesheet" href="../../static/css/vendor/asScrollable.min.css">
<link rel="stylesheet" href="../../static/css/vendor/asProgress.min.css">
<link rel="stylesheet" href="../../static/css/iconfont.css">
<link rel="stylesheet" href="../../static/css/bootstrap-extend.css">
<link rel="stylesheet" href="../../static/css/main.css">
<script type="text/javascript" src="../../static/script/vendor/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/jquery-migrate-3.0.0.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/bootstrap.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/alertify.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/toastr.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/jquery-asScrollbar.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/jquery-asScrollable.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/jquery-asProgress.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/typeahead.bundle.min.js"></script>
<script type="text/javascript" src="../../static/script/vendor/handlebars.min.js"></script>
<script type="text/javascript" src="../../static/script/common.js"></script>
<script type="text/javascript" src="../../static/script/entity.js"></script>
<style type="text/css">
.sindu_dragger {

list-style:none;
	margin:0;
	padding:0;
	overflow:hidden;
	box-sizing:border-box
}
.sindu_handle {
	cursor:move
}
.sindu_dragger li {
	margin:0;
	padding:0;
	list-style:none;
	text-align:inherit
}
.sindu_dragger li table, .sindu_dragger td, .sindu_dragger th, .sindu_dragger tr {
	box-sizing:border-box
}
.gu-mirror {
	list-style:none
}
.sindu_dragger.sindu_column li {
	float:left
}
.sindu_dragging .sindu_origin_table {
	visibility:hidden
}
.gu-mirror {
	position:fixed!important;
	margin:0!important;
	z-index:9999!important;
	opacity:.8
}
.gu-mirror li {
	margin:0;
	padding:0;
	list-style:none;
	text-align:inherit
}
.gu-mirror li table, .gu-mirror td, .gu-mirror th, .gu-mirror tr {
	box-sizing:border-box
}
.gu-hide {
	display:none!important
}
.gu-unselectable {
	-webkit-user-select:none!important;
	-moz-user-select:none!important;
	-ms-user-select:none!important;
	user-select:none!important
}
.gu-transit {
	opacity:.5
}
</style>
</head>

<body class="app-contact">
<div class="page narrow">
  <div class="aside">
  <div class="aside-header">
    <a href="#"><img class="brand-img" src="/images/logo-72.png"></a>
  </div>
  <div class="aside-navi-container">
    <div id="aside-navi-wrap" class="aside-navi-wrap asScrollable is-enabled asScrollable-vertical">
      <div class="asScrollable-container" style="height: 548px; width: 87px;">
        <div class="asScrollable-content" style="width: 70px;">
          <ul class="aside-navi">
            <li>
              <a id="aside-navi-workbench" href="workbench" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="工作台">
              <i class="iconfont icon-workbench"></i> <span>工作台</span></a>
            </li>
            <li>
              <a id="aside-navi-customer" href="customer" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="客户">
                <i class="iconfont icon-company"></i> <span>客户</span></a>
            </li>
            <li>
              <a id="aside-navi-publicCustomer" href="publicCustomer" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="公海">
                <i class="iconfont icon-publicGroup"></i> <span>公海</span></a>
            </li>
            <li>
              <a class="selected" id="aside-navi-contact" href="contact" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="联系人">
                <i class="iconfont icon-contacts"></i> <span>联系人</span></a>
            </li>
            <li>
              <a id="aside-navi-weixin" href="weixin" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="微信">
                <i class="iconfont icon-weixin"></i> <span>微信</span></a>
            </li>
            <li>
              <a id="aside-navi-deal" href="deal" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="销售机会">
                <i class="iconfont icon-deal"></i> <span>销售机会</span></a>
            </li>
            <li>
              <a id="aside-navi-contract" href="contract" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="合同">
                <i class="iconfont icon-contract"></i> <span>合同</span></a>
            </li>
            <li>
              <a id="aside-navi-payment" href="payment" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="款项">
                <i class="iconfont icon-payment"></i> <span>款项</span></a>
            </li>
            
            <li>
              <a id="aside-navi-note" href="note" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="跟进记录">
                <i class="iconfont icon-note2"></i> <span>跟进记录</span></a>
            </li>
            <li>
              <a id="aside-navi-worksheet" href="worksheet" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="工单">
                <i class="iconfont icon-worksheet"></i> <span>工单</span></a>
            </li>
            <li>
              <a id="aside-navi-workReport" href="workReport" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="工作汇报">
                <i class="iconfont icon-workReport"></i> <span>工作汇报</span></a>
            </li>
            <li>
              <a id="aside-navi-product" href="product" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="产品">
                <i class="iconfont icon-product"></i> <span>产品</span></a>
            </li>
            <li>
              <a id="aside-navi-callCenter" href="records" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="呼叫中心/短信">
                <i class="iconfont icon-tel-busy"></i> <span>呼叫中心</span></a>
            </li>
            <li>
              <a id="aside-navi-statistics" href="customer" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="统计分析">
                <i class="iconfont icon-statistics"></i> <span>统计分析</span></a>
            </li>
          </ul>
        </div>
      </div>
    <div class="asScrollable-bar asScrollable-bar-vertical asScrollable-bar-hide" draggable="false"><div class="asScrollable-bar-handle" style="height: 421.177px;"></div></div></div>
  </div>
</div>
  <div class="page-main">
    <div class="page-main-header">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
      <div class="narrow"><a href="#" id="navi-narrow-link" data-narrow="1"><i class="iconfont"></i></a></div>
      <div class="navbar-header">联系人一览</div>
      <div class="collapse navbar-collapse navbar-collapse-toolbar">
        <div class="navbar-search">
          <form>
            <div class="form-group">
              <div class="input-search">
                <i class="search-icon iconfont icon-search"></i>
                <span class="twitter-typeahead" style="position: relative; display: inline-block;"><input type="text" class="form-control typeahead tt-hint" data-step="1" data-intro="快捷高效的模糊检索功能，帮您快速找到想要查看的客户" readonly="" autocomplete="off" spellcheck="false" tabindex="-1" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0);" dir="ltr"><input type="text" class="form-control typeahead tt-input" id="navbar-search-term" placeholder="输入客户名快速检索..." data-step="1" data-intro="快捷高效的模糊检索功能，帮您快速找到想要查看的客户" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;"><pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Microsoft YaHei&quot;, simsun; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre><div class="tt-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;"><div class="tt-dataset tt-dataset-search-cutomers"></div></div></span>
              </div>
            </div>
          </form>
        </div>

        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
          <li class="dropdown web-phone-dialpad-container">
            <a data-toggle="dropdown" href="javascript:void(0)" title="呼叫中心" aria-expanded="false" data-animation="slide-bottom" role="button">
              <i class="font-size-22 iconfont icon-tel" aria-hidden="true"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right web-phone-panel" role="menu" id="web-phone-panel">
              <div class="web-phone-header" role="presentation">
                <div class="pull-right margin-top-10"><span data-status="0" id="callcenter-seat-status" class="offline">离线</span>
                </div>
                <h5>呼叫中心 <span id="callcenter-phone"></span></h5>
              </div>
              <div class="web-phone-dialpad">
                <div class="web-phone-dialpad-input-container">
                  <input pattern="\d*" type="tel" placeholder="" id="dialpad-number-input">
                  <a class="dialpad-number-backspace" id="dialpad-number-backspace" href="#">
                    <i class="font-size-26 iconfont icon-backspace"></i>
                  </a>
                </div>

                <ul class="web-phone-dialpad-number-container" id="web-phone-dialpad-number-container">
                  <li data-value="1">1</li>
                  <li data-value="2">2</li>
                  <li data-value="3">3</li>
                  <li data-value="4">4</li>
                  <li data-value="5">5</li>
                  <li data-value="6">6</li>
                  <li data-value="7">7</li>
                  <li data-value="8">8</li>
                  <li data-value="9">9</li>
                  <li data-value="*">*</li>
                  <li data-value="0">0</li>
                  <li data-value="#">#</li>
                </ul>

                <div class="text-center padding-bottom-20">
                  <a id="dialpad-call-btn" class="dialpad-call-btn disabled" href="#">
                    <i class="iconfont icon-tel"></i>
                  </a>
                  <div id="dialpad-message" class="margin-top-10 text-danger"></div>
                </div>
              </div>
            </div>
          </li>
          <li class="dropdown notification">
            <a data-toggle="dropdown" href="javascript:void(0)" title="通知提醒" aria-expanded="false" data-animation="slide-bottom" role="button">
              <i class="font-size-22 iconfont icon-bell-black" aria-hidden="true"></i>
              <span class="badge badge-danger up hide" id="notificationNum"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right dropdown-menu-media" role="menu">
              <li class="dropdown-menu-header" role="presentation">
                <h5>通知提醒</h5>
              </li>
              <li class="list-group" role="presentation">
                <div data-role="container">
                  <div data-role="content">
                    <a class="list-group-item" role="menuitem" href="/customer?ownerUserId=QVtaSg%3D%3D&amp;endNextContactDate=2018-09-10">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i class="icon iconfont icon-company bg-red-600 white icon-circle" aria-hidden="true"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">截至到今天需要需要联系的客户</h6>
                          <time class="media-meta">合计 <span id="needContactCustomerNum">0</span></time>
                        </div>
                      </div>
                    </a>
                    <a class="list-group-item" role="menuitem" href="/task?startDate=2018-09-10">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i class="icon iconfont icon-task bg-red-600 white icon-circle" aria-hidden="true"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">截至到今天未完成的任务</h6>
                          <time class="media-meta">合计 <span id="unfinishedTaskNum">0</span></time>
                        </div>
                      </div>
                    </a>
                    <a class="list-group-item" href="/contract?expireDay=30" role="menuitem">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i class="icon iconfont icon-contract bg-red-600 white icon-circle" aria-hidden="true"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">30天内到期的合同</h6>
                          <time class="media-meta">合计 <span id="expiredContractNum">0</span></time>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </li>
              <li class="dropdown-menu-footer" role="presentation">
                <a href="/task" role="menuitem">查看所有任务提醒</a>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a class="navbar-avatar dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" data-step="2" data-position="left" data-intro="点击这里可以进行系统设置(比如创建部门，员工等)以及个人设置(比如修改登录密码，头像等)">
              <span class="avatar avatar-online">
                <img class="brand-img" src="images/person-avatar.png">
                <i></i>
              </span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li role="presentation">
                <a href="/profile" role="menuitem">
                  <i class="icon iconfont icon-me" aria-hidden="true"></i> 个人信息</a>
              </li>
              
                <li role="presentation">
                  <a href="/setting" role="menuitem">
                    <i class="icon iconfont icon-system-setting" aria-hidden="true"></i> 系统设置</a>
                </li>
              
              <li role="presentation">
                <a href="https://qikebao.kf5.com/forum/view/1047193/" role="menuitem" target="_blank">
                  <i class="icon iconfont icon-help" aria-hidden="true"></i> 在线帮助</a>
              </li>
              <li role="presentation">
                <a href="#" data-toggle="modal" data-target="#downloadAppModal" role="menuitem">
                  <i class="icon iconfont icon-app" aria-hidden="true"></i> 下载手机App</a>
              </li>
              <li class="divider" role="presentation"></li>
              <li role="presentation">
                <a href="/logout" role="menuitem">
                  <i class="icon iconfont icon-logout" aria-hidden="true"></i> 退出</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <script type="text/javascript">
    /*<![CDATA[*/
    $(function () {
      loadNotification();
      $("#aside-navi-wrap").asScrollable({
        contentSelector: ">",
        containerSelector: ">"
      });
      $("#navi-narrow-link").click(function (e) {
        e.preventDefault();
        $("#aside-navi-wrap").asScrollable('destroy');
        var _narrow = $(this).data("narrow");
        if (_narrow == "1") {
          $(this).data("narrow", "0");
          $("body>div.page").removeClass("narrow");
        } else {
          $(this).data("narrow", "1");
          $("body>div.page").addClass("narrow");
        }
        setTimeout(function () {
          $("#aside-navi-wrap").asScrollable({
            contentSelector: ">",
            containerSelector: ">"
          });
        }, 500);
      });

      $('.navbar .notification').on('shown.bs.dropdown', function () {
        $(this).find('li.list-group').asScrollable({
          contentSelector: ">",
          containerSelector: ">"
        });
        loadNotification();
      });

      var customersBloodhound = new Bloodhound({
        datumTokenizer: Bloodhound.tokenizers.obj.whitespace('text'),
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        remote: {
          url: '/customer/search/all?term=%QUERY',
          wildcard: '%QUERY'
        }
      });
      customersBloodhound.initialize();

      $('#navbar-search-term').typeahead({
        minLength: 2
      }, {
        name: 'search-cutomers',
        display: 'text',
        limit: 20,
        source: customersBloodhound,
        templates: {
          empty: [
            '<div class="tt-suggestion empty-message">',
            '没有找到符合条件的客户信息',
            '</div>'
          ].join('\n'),
          suggestion: Handlebars.compile('<div><i class="iconfont icon-{{icon}} font-size-18"></i> {{text}}</div>')
        }
      });

      $('#navbar-search-term').bind('typeahead:select', function (ev, suggestion) {
        var _url = "";
        if (suggestion.type == ENTITY_CUSTOMER) {
          _url = "/customer/detail/";
        } else {
          _url = "/contact/detail/";
        }
        _url = _url + suggestion.id;
        window.location = _url;
      });

      callcenter.init();
    });

    function loadNotification() {
      $.ajax({
        url: '/notification?random=' + Math.random(),
        type: 'GET',
        dataType: 'json',
        timeout: 60000,
        success: function (json) {
          if (json.code <= 0) {
            return;
          }
          $("#needContactCustomerNum").text(json.items.needContactCustomerNum);
          $("#unfinishedTaskNum").text(json.items.unfinishedTaskNum);

          $("#expiredContractNum").text(json.items.expiredContractNum);
          var _totalNum = json.items.needContactCustomerNum + json.items.unfinishedTaskNum + json.items.expiredContractNum;
          if (_totalNum > 0) {
            $("#notificationNum").removeClass("hide").text(_totalNum);
          } else {
            $("#notificationNum").addClass("hide");
          }
        }
      });
    }

    /*]]>*/
  </script>
  <script type="text/javascript" src="/script/callcenter.js?ver=1.11.0.1"></script>

  <div class="modal fade" id="downloadAppModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
    <div class="modal-dialog modal-center">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
          <h4 class="modal-title">下载安装企客宝旗舰版App</h4>
        </div>
        <div class="modal-body padding-horizontal-20">
          <div class="padding-20">
            <img src="/images/appqrcode.png?ver=1.11.0.1" width="200" height="200">
            <p class="padding-top-10 text-muted">微信扫一扫下载</p>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
    <div class="page-main-container">
      <div>
        <div class="nav-tabs-horizontal">
          <div class="pull-right page-main-actions">
            <button type="button" data-toggle="modal" data-target="#contactModal" href="/contact/add" class="btn btn-success btn-sm" data-customerid="">
              创建联系人
            </button>
          </div>
          <ul class="nav nav-tabs nav-tabs-line" id="contact-item-list-tab">
            <li class="active">
              <a data-toggle="tab" href="javascript:void(0)" data-field="searchType" data-value="0">全部联系人</a></li>
            <li>
              <a data-toggle="tab" href="javascript:void(0)" data-field="searchType" data-value="1">我的联系人</a></li>
            <li>
              <a data-toggle="tab" href="javascript:void(0)" data-field="searchType" data-value="2">共享给我的联系人</a></li>
            <li>
              <a data-toggle="tab" href="javascript:void(0)" data-field="searchType" data-value="3">我共享的联系人</a></li>
          </ul>

          <div id="contactTabsAll">
  <div class="search-item padding-top-20 clearfix">
    <span class="search-item-title pull-left">所属客户</span>
    <div class="pull-left">
      <select class="form-control select2-hidden-accessible" name="search-customerId" id="search-customerId" data-language="zh-CN" style="width:350px" tabindex="-1" aria-hidden="true">
        <option value="">全部</option>
        
      </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 350px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-customerId-container"><span class="select2-selection__rendered" id="select2-search-customerId-container"><span class="select2-selection__placeholder">请输入客户名检索</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
    </div>
  </div>
  <div class="search-item clearfix">
    <span class="search-item-title pull-left">客户负责人</span>
    <div class="pull-left">
      <select class="form-control select2-hidden-accessible" name="search-ownerUser" id="search-ownerUser" data-plugin="select2" data-language="zh-CN" style="width:180px" tabindex="-1" aria-hidden="true">
        <option value="">全部</option>
        <option value="QVtaSg==">孙伟</option>
      </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 180px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-ownerUser-container"><span class="select2-selection__rendered" id="select2-search-ownerUser-container" title="全部">全部</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
    </div>
  </div>

  <div class="search-item clearfix">
    <span class="search-item-title pull-left">创建时间</span>
    <div class="pull-left" style="width:300px">
      <div class="input-group input-daterange" id="search-createDate">
        <input type="text" class="form-control" value="" name="search-startCreateDate" id="search-startCreateDate">
        <div class="input-group-addon">到</div>
        <input type="text" class="form-control" value="" name="search-endCreateDate" id="search-endCreateDate">
      </div>
    </div>
  </div>
  <hr>

  <div class="action-bar padding-top-10 clearfix">
    <div class="pull-right">
      <div>
  <form id="search-field-form">
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-btn auto-width dropdown" id="search-dropdown">
          <button class="btn btn-default btn-inverse" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span id="search-dropdown-label" data-id="name" data-description="1" data-type="1">姓名</span>
            <span class="caret"></span>
          </button>
          <div class="dropdown-menu" role="menu">
            <div class="dropdown-menu-list" style="max-height:400px;" id="search-dropdown-list">
              <div data-role="container">
                <div data-role="content">
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-description="1" data-id="name" data-type="1">姓名</a></div>
                  
                  
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124570" data-type="1" data-description="1">部门</a>
                  </div>
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124571" data-type="1" data-description="4">手机</a>
                  </div>
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124572" data-type="1" data-description="5">邮箱</a>
                  </div>
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124573" data-type="1" data-description="6">QQ</a>
                  </div>
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124574" data-type="1" data-description="1">微信号</a>
                  </div>
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124575" data-type="1" data-description="2">简介</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <span id="search-control-container">
          <input type="text" class="form-control search-control" id="search-field-keyword" placeholder="检索...">

          <div class="input-daterange clearfix search-control hide" data-plugin="datepicker" id="search-field-datepicker">
            <div class="input-group">
              <input type="text" class="form-control" id="search-field-start" style="width:120px">
            </div>
            <div class="input-group">
              <input type="text" class="form-control" id="search-field-end" style="width:120px">
            </div>
          </div>

          <div class="input-daterange clearfix search-control hide" id="search-field-number">
            <div class="input-group">
              <input type="text" class="form-control" id="search-field-min" style="width:120px">
            </div>
            <div class="input-group">
              <input type="text" class="form-control" id="search-field-max" style="width:120px">
            </div>
          </div>

          <select class="form-control search-control hide" id="search-field-select">
          </select>
        </span>

        <span class="input-group-btn auto-width">
          <button type="submit" id="search-field-button" class="btn btn-success"><i class="icon iconfont icon-search" aria-hidden="true"></i></button>
        </span>
      </div>
    </div>
  </form>
</div>
    </div>

    <button type="button" class="btn btn-sm btn-default" data-plugin="customModal" data-modal="smsModal" data-tips="请选择需要发送短信的联系人">
      <i class="icon iconfont icon-sms" aria-hidden="true"></i>发短信
    </button>

    <button type="button" class="btn btn-sm btn-default" id="entity-list-delete-btn" data-name="contact" data-containerid="entity-item-list" data-confirm="确认要删除该联系人吗？删除后不可恢复">
      <i class="icon iconfont icon-trash" aria-hidden="true"></i>删除
    </button>

    <div class="btn-group">
      <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#importModal">
        <i class="icon iconfont icon-import" aria-hidden="true"></i>导入
      </button>
      <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        <span class="caret"></span>
        <span class="sr-only">导入客户</span>
      </button>
      <ul class="dropdown-menu" role="menu">
        <li role="presentation"><a href="javascript:void(0)" data-toggle="modal" data-target="#importModal" role="menuitem">导入客户</a></li>
        <li role="presentation"><a href="javascript:void(0)" data-toggle="modal" data-target="#importHistoryRecordModal" role="menuitem">查看导入记录</a></li>
      </ul>
    </div>

    <div class="btn-group">
      <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exportModal">
        <i class="icon iconfont icon-export" aria-hidden="true"></i> 导出
      </button>
      <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        <span class="caret"></span>
        <span class="sr-only">导出联系人</span>
      </button>
      <ul class="dropdown-menu" role="menu">
        <li role="presentation"><a href="javascript:void(0)" id="export-select-item-link" role="menuitem">只导出当前选择联系人</a></li>
        <li role="presentation"><a href="javascript:void(0)" data-toggle="modal" data-target="#exportModal" role="menuitem">导出全部</a></li>
      </ul>
    </div>

    <span class="dropdown" id="dropdown-entity-fields">
  <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">显示列
    <span class="caret"></span></button>
  <div class="dropdown-menu dropdown-menu-checkbox-container" role="menu" id="entity-fields-container">
    <div class="dropdown-menu-checkbox-list">
      <div data-role="container">
        <div data-role="content">
          <span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="duty" id="entity-setting-field-item-duty" checked="checked">
              <label for="entity-setting-field-item-duty">职位</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="customerName" id="entity-setting-field-item-customerName" checked="checked">
              <label for="entity-setting-field-item-customerName">所属客户</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="createDate" id="entity-setting-field-item-createDate" checked="checked">
              <label for="entity-setting-field-item-createDate">创建时间</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="createUser" id="entity-setting-field-item-createUser" checked="checked">
              <label for="entity-setting-field-item-createUser">创建员工</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="lastContactDate" id="entity-setting-field-item-lastContactDate" checked="checked">
              <label for="entity-setting-field-item-lastContactDate">最后联系时间</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="lastContactUser" id="entity-setting-field-item-lastContactUser" checked="checked">
              <label for="entity-setting-field-item-lastContactUser">最后联系员工</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124570" id="entity-setting-field-item-124570">
              <label for="entity-setting-field-item-124570">部门</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124571" id="entity-setting-field-item-124571">
              <label for="entity-setting-field-item-124571">手机</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124572" id="entity-setting-field-item-124572">
              <label for="entity-setting-field-item-124572">邮箱</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124573" id="entity-setting-field-item-124573">
              <label for="entity-setting-field-item-124573">QQ</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124574" id="entity-setting-field-item-124574">
              <label for="entity-setting-field-item-124574">微信号</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124575" id="entity-setting-field-item-124575">
              <label for="entity-setting-field-item-124575">简介</label>
            </div>
          </span>
        </div>
      </div>
    </div>
    <p class="padding-horizontal-20">
      <button id="change-fields-btn" type="button" class="btn btn-primary btn-sm btn-block">保存设置</button>
    </p>
  </div>
</span>
  </div>

  <div class="table-responsive page-content-table padding-top-20" id="entity-item-list">
    <table class="table table-pointer table-hover nowrap sindu_origin_table" id="entity-list-table">
      <thead>
      <tr>
        <th class="cell-60 text-center idx">
          <div class="checkbox-custom checkbox-primary">
            <input type="checkbox" name="item-all-checkbox">
            <label></label>
          </div>
        </th>
        <th class="cell-150">
          <a class="sort-title asc" href="#" data-sortfield="" data-sortorder="1">姓名</a>
        </th>
        <th id="header-field-duty" class="handle cell-180 sindu_handle" data-field="duty">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="duty">职位</a>
          
        </th>
        <th id="header-field-customerName" class="handle cell-180 sindu_handle" data-field="customerName">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="customerName">所属客户</a>
          
        </th>
        <th id="header-field-createDate" class="handle cell-180 sindu_handle" data-field="createDate">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="createDate">创建时间</a>
          
        </th>
        <th id="header-field-createUser" class="handle cell-180 sindu_handle" data-field="createUser">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="createUser">创建员工</a>
          
        </th>
        <th id="header-field-lastContactDate" class="handle cell-180 sindu_handle" data-field="lastContactDate">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="lastContactDate">最后联系时间</a>
          
        </th>
        <th id="header-field-lastContactUser" class="handle cell-180 sindu_handle" data-field="lastContactUser">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="lastContactUser">最后联系员工</a>
          
        </th>
        <th id="header-field-124570" class="handle cell-180 hide sindu_handle" data-field="124570">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124570">部门</a>
        </th>
        <th id="header-field-124571" class="handle cell-180 hide sindu_handle" data-field="124571">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124571">手机</a>
        </th>
        <th id="header-field-124572" class="handle cell-180 hide sindu_handle" data-field="124572">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124572">邮箱</a>
        </th>
        <th id="header-field-124573" class="handle cell-180 hide sindu_handle" data-field="124573">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124573">QQ</a>
        </th>
        <th id="header-field-124574" class="handle cell-180 hide sindu_handle" data-field="124574">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124574">微信号</a>
        </th>
        <th id="header-field-124575" class="handle cell-180 hide sindu_handle" data-field="124575">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124575">简介</a>
        </th>
        <th></th>
      </tr>
      </thead>
      <tbody id="contact-body">
      <tr id="contact-item-clone" class="hide">
        <td class="idx">
          <div class="checkbox-custom checkbox-primary">
            <input type="checkbox" name="item-checkbox">
            <label></label>
          </div>
        </td>
        <td><a href="#" class="item-name"></a></td>
        <td class="item-duty">
          
        </td>
        <td class="item-customerName">
          <a href="#" class="item-customerName" target="_blank"></a>
        </td>
        <td class="item-createDate">
          
        </td>
        <td class="item-createUser">
          
        </td>
        <td class="item-lastContactDate">
          
        </td>
        <td class="item-lastContactUser">
          
        </td>
        <td class="item-124570 hide">
          
        </td>
        <td class="item-124571 hide">
          
        </td>
        <td class="item-124572 hide">
          
        </td>
        <td class="item-124573 hide">
          
        </td>
        <td class="item-124574 hide">
          
        </td>
        <td class="item-124575 hide">
          
        </td>
        <td class="suf-cell"></td>
      </tr>
      </tbody>
    </table>
  </div>

  <div>
  <div class="pull-right">
    <span id="page-bottom-tips" class="pull-left"></span>
    <span class="dropup" id="dropdown-menu-pageSize" style="display: none;">
      <button type="button" class="btn btn-pure" data-toggle="dropdown" aria-expanded="false">
        <span class="pageSize">10条/页</span> <span class="caret"></span>
      </button>
      <ul class="dropdown-menu dropdown-menu-right" role="menu">
        <li role="presentation">
          <a href="javascript:void(0)" data-value="10" role="menuitem">10条/页</a></li>
        <li role="presentation">
          <a href="javascript:void(0)" data-value="20" role="menuitem">20条/页</a></li>
        <li role="presentation">
          <a href="javascript:void(0)" data-value="50" role="menuitem">50条/页</a></li>
        <li role="presentation">
          <a href="javascript:void(0)" data-value="100" role="menuitem">100条/页</a></li>
      </ul>
    </span>
  </div>
  <div class="pagination">
    <div class="page-bottom" id="item-pageNavi" style="display: none;"></div>
  </div>
</div>

  <div class="loading" id="search-loading" style="display: none;">
  <div class="liner">
    <h3>加载中...</h3>
    <img alt="加载中" src="/images/dots-white.gif">
  </div>
</div>

  <div id="contact-blank" class="loading" style="display: block;">
  <div class="liner">
    <h3>没有找到相关联系人</h3>
  </div>
</div>

</div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="contactModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content"></div>
  </div>
</div>

<div class="modal fade" id="exportModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1" data-totalnum="0">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">导出联系人</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <h5>合计导出数量：<span id="export-total-num"></span></h5>
        <ul id="export-list"></ul>
      </div>
      <div class="modal-footer">
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">关闭</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="dealModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content"></div>
  </div>
</div>

<div class="modal fade" id="importModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title" id="importModal-title">导入联系人</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <div class="pearls pearls-xs row">
          <div class="pearl current col-md-4" id="pearls-step-1">
            <span class="pearl-number">1</span>
            <span class="pearl-title">上传文件</span>
          </div>
          <div class="pearl col-md-4" id="pearls-step-2">
            <span class="pearl-number">2</span>
            <span class="pearl-title">开始导入</span>
          </div>
          <div class="pearl col-md-4" id="pearls-step-3">
            <span class="pearl-number">3</span>
            <span class="pearl-title">导入完成</span>
          </div>
        </div>

        <div id="import-step-1-container">
          <form class="form-horizontal padding-right-30" id="form-import-entity">
            <input type="hidden" value="1" id="entity-import-visible">
            <div class="form-group">
              <label class="col-sm-3 control-label" for="entity-import-fileupload">上传文件</label>
              <div class="col-sm-9">
                <span id="entity-import-fileupload-container" style="position: relative;">
                  <button id="entity-import-fileupload" type="button" data-fileitem="" class="btn btn-success btn-sm icon iconfont icon-plus" style="z-index: 1;"> 上传文件
                  </button>
                <div id="html5_1cn1ehpropcj1ab5mdk1uab1tpd4_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px; overflow: hidden; z-index: 0;"><input id="html5_1cn1ehpropcj1ab5mdk1uab1tpd4" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" accept=".xls,.xlsx" tabindex="-1"></div></span>
                <div id="entity-import-upload-attachments" class="upload-attachments padding-top-10">
                  <div class="upload-attachment-item hide" id="entity-import-upload-attachment-item-clone">
                    <i class="icon iconfont icon-attachment"></i>
                    <span class="file-name padding-right-5"></span>(<span class="file-size"></span>)
                    <span class="file-progress padding-left-10"></span>
                    <a href="#" class="file-remove-link">删除</a>
                  </div>
                </div>
              </div>
            </div>

            
            <input type="hidden" value="QVtaSg==" name="entity-import-ownerUserId" id="entity-import-ownerUserId">

            

            <div class="form-group">
              <label class="col-sm-3 control-label">导入模板</label>
              <div class="col-sm-9 control-value">
                <a href="/contact/import/template" id="link_templateUrl" target="_blank"><i class="icon iconfont icon-download"></i> 下载导入模板</a>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">说明</label>
              <div class="col-sm-9 control-value">每次导入上限为3000条，导入大量数据的情况下，请分批导入</div>
            </div>
            <div class="form-group hide">
              <label class="col-sm-3 control-label" for="entity-upload-type">重复数据</label>
              <div class="col-sm-9">
                <div class="radio-custom radio-primary pull-left padding-horizontal-20">
                  <input type="radio" name="entity-upload-type" id="entity-upload-type-skip" checked="checked" value="1">
                  <label for="entity-upload-type-skip" data-container="form#form-import-entity" data-tooltip="tooltip" data-original-title="重复数据不处理" data-placement="bottom">忽略</label>
                </div>
                <div class="radio-custom radio-primary pull-left padding-horizontal-20">
                  <input type="radio" name="entity-upload-type" id="entity-upload-type-replace" value="2">
                  <label for="entity-upload-type-replace" data-container="form#form-import-entity" data-tooltip="tooltip" data-original-title="直接覆盖导入数据" data-placement="bottom">覆盖</label>
                </div>
                <div class="radio-custom radio-primary pull-left padding-horizontal-20">
                  <input type="radio" name="entity-upload-type" id="entity-upload-type-add" value="3">
                  <label for="entity-upload-type-add" data-container="form#form-import-entity" data-tooltip="tooltip" data-original-title="补齐没有值的字段" data-placement="bottom">补齐</label>
                </div>
              </div>
            </div>
          </form>
        </div>

        <div id="import-step-2-container" class="hide">
          <form class="form-horizontal padding-right-30">
            <div class="form-group">
              <label class="col-sm-3 control-label">导入进度</label>
              <div class="col-sm-9 control-value">
                <div class="progress" role="progressbar" data-goal="100" id="entity-import-progress" aria-valuenow="0">
                  <div class="progress__bar" style="width: 0%;"></div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">总数量</label>
              <div class="col-sm-9 control-value" id="import-totalNum"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">成功导入数量</label>
              <div class="col-sm-9 control-value" id="import-successNum"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">导入失败数量</label>
              <div class="col-sm-9 control-value" id="import-failedNum"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-12 control-value padding-left-40">提示：导入过程中请不要关闭该窗口</label>
            </div>
          </form>

          <iframe width="0px" height="0px" class="hide" id="import-iframe" name="import-iframe" src="about:blank"></iframe>
        </div>

        <div id="import-step-3-container" class="hide">
          <h4 class="text-center">导入完成</h4>
          <form class="form-horizontal padding-right-30">
            <div class="form-group">
              <label class="col-sm-3 control-label">总数量</label>
              <div class="col-sm-9 control-value" id="import-totalNum2"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">成功导入数量</label>
              <div class="col-sm-9 control-value" id="import-successNum2"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">导入失败数量</label>
              <div class="col-sm-9 control-value" id="import-failedNum2"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">导出详细</label>
              <div class="col-sm-9 control-value">
                <a href="#" target="_blank" id="import-result-excel-link"><i class="icon iconfont icon-download"></i>
                  下载导入结果详细</a></div>
            </div>
          </form>
        </div>
      </div>
      <div class="modal-footer">

        <span id="entity-import-tips" class="text-danger padding-right-20"></span>
        <button class="btn btn-primary" id="entity-import-btn" type="button">导入</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">关闭</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="importHistoryRecordModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">导入历史查询</h4>
      </div>
      <div class="modal-body padding-bottom-20">
        <form class="form-inline padding-horizontal-10" id="entity-import-history-form">
          <div class="form-group">
            <label class="control-label padding-right-10" for="import-history-ownerUserId">员工</label>
            <select class="form-control select2-hidden-accessible" name="import-history-ownerUserId" id="import-history-ownerUserId" data-plugin="select2" data-language="zh-CN" style="width:180px;" tabindex="-1" aria-hidden="true">
              <option value="">全部</option>
              <option value="QVtaSg==">孙伟</option>
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 180px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-import-history-ownerUserId-container"><span class="select2-selection__rendered" id="select2-import-history-ownerUserId-container" title="全部">全部</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
          </div>

          <div class="form-group padding-left-10">
            <label class="control-label padding-right-10" for="import-history-createDate">导入时间</label>
            <div class="input-group input-daterange" id="import-history-createDate">
              <input type="text" class="form-control" value="" name="import-history-startCreateDate" id="import-history-startCreateDate">
              <div class="input-group-addon">到</div>
              <input type="text" class="form-control" value="" name="import-history-endCreateDate" id="import-history-endCreateDate">
            </div>
          </div>

          <div class="form-group padding-left-10">
            <button type="submit" class="btn btn-success btn-sm">搜索</button>
          </div>
        </form>

        <div class="table-responsive page-content-table padding-horizontal-10 padding-top-20">
          <table class="table table-pointer table-hover" id="import-history-table">
            <thead>
            <tr>
              <th class="cell-80">编号</th>
              <th class="hide">数据类型</th>
              <th class="hide">负责人</th>
              <th class="cell-100">成功数</th>
              <th class="cell-100">失败数</th>
              <th class="cell-100">导入员工</th>
              <th class="cell-180">导入时间</th>
              <th class="cell-120">下载</th>
              <th></th>
            </tr>
            </thead>
            <tbody id="import-history-body">
            <tr id="import-history-item-clone" class="hide">
              <td class="item-idx"></td>
              <td class="hide"></td>
              <td class="hide"></td>
              <td class="item-successNum"></td>
              <td class="item-failedNum"></td>
              <td class="item-createUser"></td>
              <td class="item-createDate"></td>
              <td>
                <a type="button" class="btn btn-sm btn-icon btn-flat btn-default btn-download" target="_blank" href="#" data-tooltip="tooltip" data-original-title="下载">
                  <i class="icon iconfont icon-download" aria-hidden="true"></i>
                </a>
              </td>
              <td></td>
            </tr>
            </tbody>
          </table>
        </div>

        <div class="pagination">
          <div class="page-bottom" id="import-history-item-pageNavi"></div>
        </div>

        <div class="loading" id="import-history-search-loading">
  <div class="liner">
    <h3>加载中...</h3>
    <img alt="加载中" src="/images/dots-white.gif">
  </div>
</div>

        <div id="import-history-blank" class="loading">
  <div class="liner">
    <h3>没有找到相关导入记录</h3>
  </div>
</div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="updateNoteModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">修改跟进记录</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="update-note-btn" type="button">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="contactPhoneModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">拨打电话</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <div class="media">
          <div class="media-left"><i class="icon iconfont icon-person font-size-40"></i></div>
          <div class="media-body padding-left-10">
            <h4 class="media-heading"></h4>
          </div>
        </div>
        <div class="padding-20" id="contactPhoneModal-container"></div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="smsModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">发送短信</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="sms-form">
          <div class="form-group">
            <label class="control-label" for="sms-mobiles">发送对象(合计:<span id="sms-mobiles-num">0</span>)</label>
            <div>
              <input type="text" class="form-control" id="sms-mobiles" value="">
              <small class="help-block" id="sms-mobiles-tips"></small>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label" for="sms-template">短信模版</label>
            <div>
              <select class="form-control select2-hidden-accessible" id="sms-template" data-plugin="select2" data-language="zh-CN" data-width="100%" tabindex="-1" aria-hidden="true">
                <option value="">请选择短信模版</option>
              </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-sms-template-container"><span class="select2-selection__rendered" id="select2-sms-template-container" title="请选择短信模版">请选择短信模版</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label" for="sms-preview">短信预览</label>
            <div id="sms-preview"></div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        剩余短信数: <span id="sms-surplus" class="red-600 padding-right-10">0</span>
        <button class="btn btn-primary" id="send-sms-btn" type="button">发送</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="recordModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">通话录音</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <div id="recordModal-audio" class="padding-vertical-20"></div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  /*<![CDATA[*/
  var _visible = 1;
  var _searchType = 0;
  var _loginUserId = "QVtaSg==";
  var _pageSize = 10;

  var _noteCategories = [{"id":124684,"name":"\u7535\u8BDD","color":"#000000"},{"id":124685,"name":"QQ","color":"#000000"},{"id":124686,"name":"\u5FAE\u4FE1","color":"#000000"},{"id":124687,"name":"\u4F1A\u8BAE","color":"#000000"},{"id":124688,"name":"\u4E0A\u95E8\u62DC\u8BBF","color":"#000000"}];
  var _users = [{"name":"\u5B59\u4F1F","imgPath":"images/person-avatar.png","valid":true,"encodedGroupId":"","encodedId":"QVtaSg=="}];

  var _targetType = 3;
  var _targetId = "";

  //部门信息
  var _groups = null;
  var _showFieldIds = "duty,customerName,createDate,createUser,lastContactDate,lastContactUser";
  var _sortField = "";
  var _sortOrder = 0;

  var _fields = [{"id":124570,"name":"\u90E8\u95E8","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":1},{"id":124571,"name":"\u624B\u673A","required":false,"phoneField":true,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":4},{"id":124572,"name":"\u90AE\u7BB1","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":5},{"id":124573,"name":"QQ","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":6},{"id":124574,"name":"\u5FAE\u4FE1\u53F7","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":1},{"id":124575,"name":"\u7B80\u4ECB","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":2}];

  var _dealPhases = [{"id":124693,"name":"\u9700\u6C42\u63D0\u6848","color":"#000000"},{"id":124694,"name":"\u6295\u6807","color":"#000000"},{"id":124695,"name":"\u5546\u52A1\u8C08\u5224","color":"#000000"},{"id":124696,"name":"\u8D62\u5355","color":"#000000"}];

  var _isSinglePage = false;
  /*]]>*/
</script>

<link rel="stylesheet" href="css/vendor/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/vendor/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="css/vendor/bootstrap-select2.min.css">
<link rel="stylesheet" href="css/vendor/slidePanel.min.css">
<link rel="stylesheet" href="css/vendor/bootstrap-editable.min.css">
<link rel="stylesheet" href="css/vendor/magnific-popup.min.css">
<link rel="stylesheet" href="css/vendor/audioplayer.css">

<script type="text/javascript" src="script/vendor/moment.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-select2.min.js"></script>
<script type="text/javascript" src="script/vendor/jquery-slidePanel.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="script/vendor/plupload.full.min.js"></script>
<script type="text/javascript" src="script/vendor/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="script/vendor/table-dragger.min.js"></script>
<script type="text/javascript" src="script/vendor/audioplayer.min.js"></script>
<script type="text/javascript" src="script/uploader.js"></script>
<script type="text/javascript" src="script/importExport.js"></script>
<script type="text/javascript" src="script/pageNavi.js"></script>
<script type="text/javascript" src="script/contact.js"></script>
<script type="text/javascript" src="script/contact-list.js"></script>
<script type="text/javascript" src="script/entity-deal-list.js"></script>
<script type="text/javascript" src="script/importHistory-list.js"></script>
<script type="text/javascript" src="script/sms.js"></script>


</body>
</html>