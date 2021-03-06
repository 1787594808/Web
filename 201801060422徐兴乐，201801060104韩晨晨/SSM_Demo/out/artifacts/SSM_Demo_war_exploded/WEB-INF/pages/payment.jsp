<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="renderer" content="webkit"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<head>
<style type="text/css" id="alertifyCSS"></style>
<title>企客宝客户管理系统-回款记录一览</title>
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
<body class="app-payment">
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
      <div class="navbar-header">回款记录一览</div>
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
                    <a class="list-group-item" role="menuitem" href="/customer?ownerUserId=QVtaSg%3D%3D&amp;endNextContactDate=2018-09-11">
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
                    <a class="list-group-item" role="menuitem" href="/task?startDate=2018-09-11">
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
            <div class="btn-group" role="group">
              <a href="/payment?viewType=1" class="btn btn-sm btn-icon btn-info " data-tooltip="tooltip" data-container="body" data-original-title="按列表浏览">
                <i class="icon iconfont icon-list" aria-hidden="true"></i></a>
              <a href="/payment?viewType=3" class="btn btn-sm btn-icon btn-info" data-tooltip="tooltip" data-container="body" data-original-title="按日期浏览">
                <i class="icon iconfont icon-time" aria-hidden="true"></i></a>
            </div>
            <button type="button" data-toggle="modal" data-target="#paymentModal" href="/payment/add" data-customerid="" data-contractid="" class="btn btn-success btn-sm">
              创建款项记录
            </button>
          </div>

          <ul class="nav nav-tabs nav-tabs-line" id="payment-item-list-tab">
            <li class="active">
              <a href="payment.html">款项记录</a></li>
            <li>
              <a href="/invoice">票据记录</a></li>
          </ul>
          <div>
  <div class="padding-top-20">
    <div class="search-item clearfix">
      <span class="search-item-title pull-left">款项</span>
      <div class="search-item-condition">
        <a href="#" class="selected item" data-field="searchType" data-value="0">全部款项</a>
        <a href="#" class="item" data-field="searchType" data-value="2">共享给我的款项</a>
        <a href="#" class="item" data-field="searchType" data-value="3">我共享的款项</a>
      </div>
    </div>

    <div class="search-item clearfix">
      <span class="search-item-title pull-left">回款时间</span>
      <div class="search-item-condition" id="receiveDate-container">
        <a href="#" class="selected item" data-field="receiveDate" data-value="">全部</a>
        <a href="#" class="item" data-field="receiveDate" data-value="yesterday">昨天</a>
        <a href="#" class="item" data-field="receiveDate" data-value="today">今天</a>
        <a href="#" class="item" data-field="receiveDate" data-value="thisweek">本周</a>
        <a href="#" class="item" data-field="receiveDate" data-value="lastweek">上周</a>
        <a href="#" class="item" data-field="receiveDate" data-value="thismonth">本月</a>
        <a href="#" class="item" data-field="receiveDate" data-value="lastmonth">上月</a>
        <span class="dropdown">
          <a href="#" data-toggle="dropdown" class="item" data-value="">指定时间 <span class="caret"></span></a>
          <div class="dropdown-menu search-item-condition-datetimepicker-dropdown-menu" role="menu">
            <div class="padding-bottom-10">设置指定时间段</div>
            <div class="input-daterange clearfix" data-plugin="datepicker">
              <div class="input-group">
                <span class="input-group-addon">
                  <i class="icon iconfont icon-calendar" aria-hidden="true"></i>
                </span>
                <input type="text" class="form-control" id="search-receiveDate-start" value="">
              </div>
              <div class="input-group">
                <span class="input-group-addon">到</span>
                <input type="text" class="form-control" id="search-receiveDate-end" value="">
              </div>
            </div>
            <div class="padding-top-10">
              <button type="button" class="btn btn-primary btn-sm search-date" data-field="receiveDate">搜索</button>
            </div>
          </div>
        </span>
      </div>
    </div>
  </div>

  <div class="search-item clearfix">
    <span class="search-item-title pull-left">关联合同</span>
    <div class="search-item-condition">
      <a href="#" class="selected item" data-field="contractFlag" data-value="0">全部</a>
      <a href="#" class="item" data-field="contractFlag" data-value="-1">未关联合同</a>
      <a href="#" class="item" data-field="contractFlag" data-value="1">已关联合同</a>
    </div>
  </div>

  <div class="search-item clearfix">
    <span class="search-item-title pull-left">所属合同</span>
    <div class="pull-left">
      <select class="form-control select2-hidden-accessible" name="search-contractId" id="search-contractId" data-language="zh-CN" style="width:350px" tabindex="-1" aria-hidden="true">
        <option value="">全部</option>
      </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 350px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-contractId-container"><span class="select2-selection__rendered" id="select2-search-contractId-container"><span class="select2-selection__placeholder">请输入合同检索</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
    </div>
  </div>

  <div class="search-item clearfix">
    <span class="search-item-title pull-left">所属客户</span>
    <div class="pull-left">
      <select class="form-control select2-hidden-accessible" name="search-customerId" id="search-customerId" data-language="zh-CN" style="width:350px" tabindex="-1" aria-hidden="true">
        <option value="">全部</option>
      </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 350px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-customerId-container"><span class="select2-selection__rendered" id="select2-search-customerId-container"><span class="select2-selection__placeholder">请输入客户名检索</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
    </div>
  </div>

  <div class="search-item clearfix">
    <span class="search-item-title pull-left">负责人</span>
    <div class="pull-left">
      <select class="form-control select2-hidden-accessible" name="search-ownerUser" id="search-ownerUser" data-plugin="select2" data-language="zh-CN" style="width:180px" tabindex="-1" aria-hidden="true">
        <option value="">全部</option>
        <option value="QVtaSg==">孙伟</option>
      </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 180px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-ownerUser-container"><span class="select2-selection__rendered" id="select2-search-ownerUser-container" title="全部">全部</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
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
            <span id="search-dropdown-label" data-id="name" data-description="1" data-type="1">款项名称</span>
            <span class="caret"></span>
          </button>
          <div class="dropdown-menu" role="menu">
            <div class="dropdown-menu-list" style="max-height:400px;" id="search-dropdown-list">
              <div data-role="container">
                <div data-role="content">
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-description="1" data-id="name" data-type="1">款项名称</a></div>
                  
                  
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124567" data-type="1" data-description="2">简介</a>
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

    <button type="button" class="btn btn-sm btn-default" data-plugin="customModal" data-modal="shareModal" data-tips="请选择需要共享的款项">
      <i class="icon iconfont icon-share" aria-hidden="true"></i>共享款项
    </button>

    <button type="button" class="btn btn-sm btn-default" id="entity-list-delete-btn" data-name="payment" data-containerid="entity-item-list" data-confirm="确认要删除该款项吗？删除后不可恢复">
      <i class="icon iconfont icon-trash" aria-hidden="true"></i>删除
    </button>

    <div class="btn-group">
      <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exportModal"><i class="icon iconfont icon-export" aria-hidden="true"></i> 导出
      </button>
      <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        <span class="caret"></span>
        <span class="sr-only">导出款项</span>
      </button>
      <ul class="dropdown-menu" role="menu">
        <li role="presentation"><a href="javascript:void(0)" id="export-select-item-link" role="menuitem">只导出当前选择款项</a></li>
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
              <input type="checkbox" name="field-checkbox" value="customerName" id="entity-setting-field-item-customerName" checked="checked">
              <label for="entity-setting-field-item-customerName">所属客户</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="receiveDate" id="entity-setting-field-item-receiveDate" checked="checked">
              <label for="entity-setting-field-item-receiveDate">回款日期</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="amount" id="entity-setting-field-item-amount" checked="checked">
              <label for="entity-setting-field-item-amount">回款金额</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="category" id="entity-setting-field-item-category" checked="checked">
              <label for="entity-setting-field-item-category">类型</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="ownerUser" id="entity-setting-field-item-ownerUser" checked="checked">
              <label for="entity-setting-field-item-ownerUser">收款人</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="contractName" id="entity-setting-field-item-contractName" checked="checked">
              <label for="entity-setting-field-item-contractName">关联合同</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="createDate" id="entity-setting-field-item-createDate" checked="checked">
              <label for="entity-setting-field-item-createDate">创建时间</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="updateDate" id="entity-setting-field-item-updateDate" checked="checked">
              <label for="entity-setting-field-item-updateDate">更新时间</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124567" id="entity-setting-field-item-124567">
              <label for="entity-setting-field-item-124567">简介</label>
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
        <th class="cell-250">
          <a class="sort-title asc" href="#" data-sortfield="" data-sortorder="1">名称</a>
        </th>
        <th id="header-field-customerName" class="handle cell-180 sindu_handle" data-field="customerName">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="customerName">所属客户</a>
          
        </th>
        <th id="header-field-receiveDate" class="handle cell-180 sindu_handle" data-field="receiveDate">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="receiveDate">回款日期</a>
          
        </th>
        <th id="header-field-amount" class="handle cell-180 sindu_handle" data-field="amount">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="amount">回款金额</a>
          
        </th>
        <th id="header-field-category" class="handle cell-180 sindu_handle" data-field="category">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="category">类型</a>
          
        </th>
        <th id="header-field-ownerUser" class="handle cell-180 sindu_handle" data-field="ownerUser">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="ownerUser">收款人</a>
          
        </th>
        <th id="header-field-contractName" class="handle cell-180 sindu_handle" data-field="contractName">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="contractName">关联合同</a>
          
        </th>
        <th id="header-field-createDate" class="handle cell-180 sindu_handle" data-field="createDate">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="createDate">创建时间</a>
          
        </th>
        <th id="header-field-updateDate" class="handle cell-180 sindu_handle" data-field="updateDate">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="updateDate">更新时间</a>
          
        </th>
        <th id="header-field-124567" class="handle cell-180 hide sindu_handle" data-field="124567">
          
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="124567">简介</a>
        </th>
        <th></th>
      </tr>
      </thead>
      <tbody id="payment-body">
      <tr id="item-clone" class="hide">
        <td class="idx">
          <div class="checkbox-custom checkbox-primary">
            <input type="checkbox" name="item-checkbox">
            <label></label>
          </div>
        </td>
        <td><a href="#" class="item-name"></a></td>
        <td class="item-customerName">
          <a href="#" class="item-customerName" target="_blank"></a>
        </td>
        <td class="item-receiveDate">
          
        </td>
        <td class="item-amount">
          
        </td>
        <td class="item-category">
          
        </td>
        <td class="item-ownerUser">
          
        </td>
        <td class="item-contractName">
          
        </td>
        <td class="item-createDate">
          
        </td>
        <td class="item-updateDate">
          
        </td>
        <td class="item-124567 hide">
          
        </td>
        <td class="suf-cell"></td>
      </tr>
      <tr id="payment-item-SVlN" class="list-item">
        <td class="idx">
          <div class="checkbox-custom checkbox-primary">
            <input type="checkbox" name="item-checkbox">
            <label></label>
          </div>
        </td>
        <td><a href="#" class="item-name">企客宝旗舰版销售款项</a></td>
        <td class="item-customerName">
          <a href="/customer/detail/RV1RQhheQw%3D%3D" class="item-customerName" target="_blank">北京博众致远网络科技有限公司</a>
        </td>
        <td class="item-receiveDate">2018-09-10</td>
        <td class="item-amount">80.00</td>
        <td class="item-category"></td>
        <td class="item-ownerUser">孙伟</td>
        <td class="item-contractName">企客宝旗舰版销售合同</td>
        <td class="item-createDate">2018-09-10 14:12</td>
        <td class="item-updateDate"></td>
        <td class="item-124567 hide">
          
        </td>
        <td class="suf-cell"></td>
      </tr></tbody>
    </table>
  </div>

  <div>
  <div class="pull-right">
    <span id="page-bottom-tips" class="pull-left">合计金额:80.00</span>
    <span class="dropup" id="dropdown-menu-pageSize" style="">
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
    <div class="page-bottom" id="item-pageNavi" style=""></div>
  </div>
</div>

  <div class="loading" id="search-loading" style="display: none;">
  <div class="liner">
    <h3>加载中...</h3>
    <img alt="加载中" src="/images/dots-white.gif">
  </div>
</div>

  <div id="payment-blank" class="loading" style="display: none;">
  <div class="liner">
    <h3>没有找到相关回款记录</h3>
  </div>
</div>
</div>
          
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="paymentModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content"></div>
  </div>
</div>

<div class="modal fade" id="transferModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">修改收款人</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-transfer-entity">
          <div class="form-group">
            <label class="control-label" for="entity-newOwnerUserId">负责人</label>
            <select class="form-control select2-hidden-accessible" name="entity-newOwnerUserId" id="entity-newOwnerUserId" data-plugin="select2" data-language="zh-CN" data-width="100%" tabindex="-1" aria-hidden="true">
              <option value="QVtaSg==" selected="selected">孙伟</option>
              
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-entity-newOwnerUserId-container"><span class="select2-selection__rendered" id="select2-entity-newOwnerUserId-container" title="孙伟">孙伟</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            <small class="help-block" id="entity-transfer-tips"></small>
          </div>

          
        </form>

      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="transfer-entity-btn" type="button" data-name="payment">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="changeContractModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">修改所属客户和合同</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-change-contract">
          <div class="form-group">
            <label class="control-label required" for="entity-change-customerId">所属客户</label>
            <select class="form-control select2-hidden-accessible" name="entity-change-customerId" id="entity-change-customerId" data-field-required="true" data-language="zh-CN" data-width="100%" data-relation-select-id="entity-change-contractId" data-relation-select-type="contract" tabindex="-1" aria-hidden="true">
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-entity-change-customerId-container"><span class="select2-selection__rendered" id="select2-entity-change-customerId-container"><span class="select2-selection__placeholder">请输入客户名检索</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            <small class="help-block"></small>
          </div>
          <div class="form-group">
            <label class="control-label" for="entity-change-contractId">合同</label>
            <select class="form-control select2-hidden-accessible" name="entity-change-contractId" id="entity-change-contractId" data-plugin="select2" data-language="zh-CN" data-width="100%" tabindex="-1" aria-hidden="true">
              <option value="">请先选择所属客户</option>
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-entity-change-contractId-container"><span class="select2-selection__rendered" id="select2-entity-change-contractId-container" title="请先选择所属客户">请先选择所属客户</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            <small class="help-block"></small>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="change-contract-btn" type="button" data-name="payment">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="addUpdateTaskModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title" id="task-Modal-title">创建任务提醒</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-addUpdate-task">
          <input type="hidden" value="" id="task-id">
          <div class="form-group">
            <label class="control-label required" for="task-remark">提醒内容</label>
            <input class="form-control" id="task-remark" name="task-remark" data-field-required="true" value="">
            <small class="help-block"></small>
          </div>

          <div class="form-group">
            <label class="control-label required" for="task-startDate">开始时间</label>
            <input class="form-control" id="task-startDate" data-plugin="datetimepicker" name="task-startDate" data-field-required="true" value="">
            <small class="help-block"></small>
          </div>

          <div class="form-group">
            <label class="control-label" for="task-remindAmount">提醒时间</label>
            <select class="form-control select2-hidden-accessible" name="task-remindAmount" id="task-remindAmount" data-plugin="select2" data-language="zh-CN" data-width="100%" tabindex="-1" aria-hidden="true">
              <option value="0">准时</option>
              <option value="5">提前5分钟</option>
              <option value="15">提前15分钟</option>
              <option value="30">提前30分钟</option>
              <option value="60">提前1个小时</option>
              <option value="120">提前2个小时</option>
              <option value="1440">提前1天</option>
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-task-remindAmount-container"><span class="select2-selection__rendered" id="select2-task-remindAmount-container" title="准时">准时</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
          </div>

          <div class="form-group">
            <label class="control-label" for="task-ownerUserId">负责人</label>
            <select class="form-control select2-hidden-accessible" name="task-ownerUserId" id="task-ownerUserId" data-plugin="select2" data-language="zh-CN" data-width="100%" tabindex="-1" aria-hidden="true">
              <option value="QVtaSg==" selected="selected">孙伟</option>
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-task-ownerUserId-container"><span class="select2-selection__rendered" id="select2-task-ownerUserId-container" title="孙伟">孙伟</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="addUpdate-task-btn" type="button">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="shareModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">共享款项</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-share-entity">
          <div class="form-group">
            <label class="control-label" for="entity-shareUserId">共享同事</label>
            <select class="form-control select2-hidden-accessible" name="entity-shareUserId" id="entity-shareUserId" data-plugin="select2" data-language="zh-CN" data-width="100%" multiple="" tabindex="-1" aria-hidden="true">
              <option value="QVtaSg==">孙伟</option>
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="" style="width: 0.75em;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            <small class="help-block" id="entity-shareUserId-tips"></small>
          </div>
          <div class="clearfix">
            <div class="radio-custom radio-primary pull-left padding-horizontal-20">
              <input type="radio" name="entity-share-radio" id="entity-share-add" checked="checked" value="1">
              <label for="entity-share-add" data-container="#shareModal" data-tooltip="tooltip" data-original-title="新增加共享同事" data-placement="bottom">新增</label>
            </div>
            <div class="radio-custom radio-primary pull-left padding-horizontal-20">
              <input type="radio" name="entity-share-radio" id="entity-share-replace" value="2">
              <label for="entity-share-replace" data-container="#shareModal" data-tooltip="tooltip" data-original-title="将原来共享的同事替换为新的同事" data-placement="bottom">替换</label>
            </div>
            <div class="radio-custom radio-primary pull-left padding-horizontal-20">
              <input type="radio" name="entity-share-radio" id="entity-share-remove" value="3">
              <label for="entity-share-remove" data-container="#shareModal" data-tooltip="tooltip" data-original-title="从原有共享同事中删除本次选择同事" data-placement="bottom">移除</label>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="share-entity-btn" type="button" data-name="payment">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="shareSingleModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">共享款项</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-share-single-entity">
          <div class="form-group">
            <label class="control-label" for="deal-single-shareUserId">共享同事</label>
            <select class="form-control select2-hidden-accessible" name="entity-single-shareUserId" id="entity-single-shareUserId" data-plugin="select2" data-language="zh-CN" data-width="100%" multiple="" tabindex="-1" aria-hidden="true">
              <option value="QVtaSg==">孙伟</option>
            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="" style="width: 0.75em;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="share-single-entity-btn" type="button" data-name="payment">确定
        </button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exportModal" aria-hidden="true" role="dialog" tabindex="-1" data-totalnum="0" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">导出款项</h4>
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

<script type="text/javascript">
  /*<![CDATA[*/
  var _loginUserId = "QVtaSg==";
  var _pageSize = 10;

  var _categories = [{"id":124703,"name":"\u9884\u4ED8\u6B3E","color":"#000000"},{"id":124704,"name":"\u5408\u540C\u6B3E","color":"#000000"},{"id":124705,"name":"\u5C3E\u6B3E","color":"#000000"}];

  var _users = [{"name":"\u5B59\u4F1F","imgPath":"images/person-avatar.png","valid":true,"encodedGroupId":"","encodedId":"QVtaSg=="}];

  var _targetType = 6;
  var _targetId = "";

  //部门信息
  var _groups = null;
  var _showFieldIds = "customerName,receiveDate,amount,category,ownerUser,contractName,createDate,updateDate";
  var _sortField = "";
  var _sortOrder = 0;

  var _fields = [{"id":124567,"name":"\u7B80\u4ECB","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":2}];

  //浏览模式
  var _viewType = 1;

  var _isSinglePage = false;
  /*]]>*/
</script>

<link rel="stylesheet" href="css/vendor/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="css/vendor/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="css/vendor/bootstrap-select2.min.css">
<link rel="stylesheet" href="css/vendor/slidePanel.min.css">
<link rel="stylesheet" href="css/vendor/bootstrap-editable.min.css">
<link rel="stylesheet" href="css/vendor/magnific-popup.min.css">
<script type="text/javascript" src="script/vendor/moment.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-select2.min.js"></script>
<script type="text/javascript" src="script/vendor/jquery-slidePanel.min.js"></script>
<script type="text/javascript" src="script/vendor/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="script/vendor/plupload.full.min.js"></script>
<script type="text/javascript" src="script/vendor/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="script/vendor/table-dragger.min.js"></script>
<script type="text/javascript" src="script/uploader.js"></script>
<script type="text/javascript" src="script/importExport.js"></script>
<script type="text/javascript" src="script/payment.js"></script>
<script type="text/javascript" src="script/payment-list.js"></script>
<script type="text/javascript" src="script/pageNavi.js"></script>


</body>
</html>