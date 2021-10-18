﻿<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="renderer" content="webkit"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<head>
<style type="text/css" id="alertifyCSS"></style>
<title>企客宝客户管理系统-客户一览</title>
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

<body class="app-workbench">
<div class="page narrow">
  <div class="aside">
  <div class="aside-header">
    <a href="#"><img class="brand-img" src="/images/logo-72.png"></a>
  </div>
  <div class="aside-navi-container">
    <div id="aside-navi-wrap" class="aside-navi-wrap asScrollable is-enabled asScrollable-vertical">
      <div class="asScrollable-container" style="height: 299px; width: 87px;">
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
    <div class="asScrollable-bar asScrollable-bar-vertical asScrollable-bar-hide" draggable="false"><div class="asScrollable-bar-handle" style="height: 123.444px;"></div></div></div>
  </div>
</div>
  <div class="page-main">
    <div class="page-main-header">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
      <div class="narrow"><a href="#" id="navi-narrow-link" data-narrow="1"><i class="iconfont"></i></a></div>
      <div class="navbar-header">工作台</div>
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
    <div class="padding-horizontal-20 padding-top-20">
      <div class="page-header">
        <h4 class="page-title">客户统计</h4>
      </div>
      <div class="page-content">
        <div class="panel">
          <div class="panel-body">
            <div class="row padding-20">
              <div class="col-lg-2 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">客户总数量</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="customer.html" target="_blank">3</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">所有未联系客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?contactDate=none" target="_blank">3</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">逾期待联系客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?endNextContactDate=2018-09-09" target="_blank">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">今天待联系客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?nextContactDate=today" target="_blank">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">今天已联系客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?contactDate=today" target="_blank">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">今天新创建和分配客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?assignDate=today" target="_blank">3</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="padding-horizontal-20 padding-top-20">
      <div class="page-header">
        <h4 class="page-title">公海统计</h4>
      </div>
      <div class="page-content">
        <div class="panel">
          <div class="panel-body">
            <div class="row padding-20">
              <div class="col-lg-4 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">公海总客户数</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="publicCustomer.html" target="_blank">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">今日转入客户数</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/publicCustomer?assignDate=today" target="_blank">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">即将转移到公海客户数</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?status=2" target="_blank">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="padding-horizontal-20 padding-top-20">
      <div class="page-header">
        <h4 class="page-title"><span id="financialStatistics-date-title">本周</span>款项记录</h4>
        <div class="page-header-actions">
          <div class="dropdown">
            <button type="button" class="btn btn-pure dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
              <span id="financialStatistics-date-label">本周</span> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu pull-right" role="menu" id="financialStatistics-menu">
              <li><a href="#" data-value="thisweek">本周</a></li>
              <li><a href="#" data-value="lastweek">上周</a></li>
              <li><a href="#" data-value="thismonth">本月</a></li>
              <li><a href="#" data-value="lastmonth">上月</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="page-content">
        <div class="panel" id="financialStatistics-panel">
          <div class="panel-body">
            <div class="row padding-20">
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">成交合同数</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/contract?signDate=thisweek" target="_blank" id="totalContractNum" data-url="/contract?signDate=">1</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">成交合同金额</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/contract?signDate=thisweek" target="_blank" id="totalContractAmount" data-url="/contract?signDate=">80.00</a>
                    <span class="counter-number-related red-600">元</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">回款金额</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/payment?receiveDate=thisweek" target="_blank" id="totalPaymentAmount" data-url="/payment?receiveDate=">80.00</a>
                    <span class="counter-number-related red-600">元</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">开票金额</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/invoice?invoiceDate=thisweek" target="_blank" id="totalInvoiceDateAmount" data-url="/invoice?invoiceDate=">80.00</a>
                    <span class="counter-number-related red-600">元</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="panel-loading">
            <div class="loader loader-default"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="padding-horizontal-20 padding-top-20">
      <div class="page-header">
        <h4 class="page-title"><span id="quantityStatistics-date-title">本周</span>新增数据统计</h4>
        <div class="page-header-actions">
          <div class="dropdown">
            <button type="button" class="btn btn-pure dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
              <span id="quantityStatistics-date-label">本周</span> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu pull-right" role="menu" id="quantityStatistics-menu">
              <li><a href="#" data-value="thisweek">本周</a></li>
              <li><a href="#" data-value="lastweek">上周</a></li>
              <li><a href="#" data-value="thismonth">本月</a></li>
              <li><a href="#" data-value="lastmonth">上月</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="page-content">
        <div class="panel" id="quantityStatistics-panel">
          <div class="panel-body">
            <div class="row padding-20">
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">新创建客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?createDate=thisweek" target="_blank" id="totalNewCustomerNum" data-url="/customer?createDate=">3</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">新创建销售机会</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/deal?createDate=thisweek" target="_blank" id="totalNewDealNum" data-url="/deal?createDate=">1</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">联系客户数</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?contactDate=thisweek" target="_blank" id="totalContactCustomerNum" data-url="/customer?contactDate=">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div class="counter text-left">
                  <div class="counter-label blue-grey-700">新成交客户</div>
                  <div class="counter-number-group">
                    <a class="counter-number red-600" href="/customer?statusChangeDate=thisweek" target="_blank" id="totalDealCustomerNum" data-url="/customer?statusChangeDate=">0</a>
                    <span class="counter-number-related red-600">个</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="panel-loading">
            <div class="loader loader-default"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="padding-horizontal-20 padding-top-20">
      <div class="page-header"><h4 class="page-title">提醒/到期合同</h4></div>
      <div class="page-content">
        <div class="panel">
          <div class="panel-body">

            <div class="nav-tabs-horizontal">
              <ul class="nav nav-tabs" data-plugin="nav-tabs" role="tablist">
                <li class="active" role="presentation">
                  <a data-toggle="tab" href="#workbench-tab-remind" aria-controls="workbench-tab-remind" role="tab">未完成任务提醒</a></li>
                <li role="presentation">
                  <a data-toggle="tab" href="#workbench-tab-contract" aria-controls="workbench-tab-contract" role="tab">本月到期合同</a></li>
              </ul>
              <div class="tab-content padding-top-20">
                <div class="tab-pane active" id="workbench-tab-remind" role="tabpanel">
                  <div class="table-responsive page-content-table">
                    <table class="table table-striped">
                      <thead>
                      <tr>
                        <th class="cell-60 text-center idx">编号</th>
                        <th>任务内容</th>
                        <th class="cell-150">任务负责人</th>
                        <th class="cell-200">开始时间</th>
                        <th></th>
                      </tr>
                      </thead>
                      <tbody id="task-body">
                      <tr id="task-item-clone" class="hide">
                        <td class="idx"></td>
                        <td><a href="#" data-toggle="modal" data-target="#taskModal" class="task-remark"></a></td>
                        <td class="task-ownerUser"></td>
                        <td class="task-startDate"></td>
                        <td class="suf-cell"></td>
                      </tr>
                      <tr><td colspan="5" class="text-center">没有未完成的任务</td></tr></tbody>
                    </table>
                  </div>
                  <div id="workbench-tab-task-load-more" class="text-center" style="display: none;"><a href="/task">查看更多未完成任务</a></div>
                </div>
                <div class="tab-pane" id="workbench-tab-contract" role="tabpanel">
                  <div class="table-responsive page-content-table">
                    <table class="table table-striped">
                      <thead>
                      <tr>
                        <th class="cell-60 text-center idx">编号</th>
                        <th class="cell-250">合同标题</th>
                        <th class="cell-150">合同编号</th>
                        <th class="cell-250">所属客户</th>
                        <th class="cell-100">负责人</th>
                        <th class="cell-150">合同金额</th>
                        <th class="cell-150">合同签约日期</th>
                        <th class="cell-150">合同开始日期</th>
                        <th class="cell-150">合同结束日期</th>
                        <th></th>
                      </tr>
                      </thead>
                      <tbody id="contract-body">
                      <tr id="contract-item-clone" class="hide">
                        <td class="idx"></td>
                        <td><a href="#" target="_blank" class="contract-name"></a></td>
                        <td class="contract-no"></td>
                        <td class="contract-customer"></td>
                        <td class="contract-ownerUser"></td>
                        <td class="contract-amount"></td>
                        <td class="contract-signDate"></td>
                        <td class="contract-startDate"></td>
                        <td class="contract-endDate"></td>
                        <td class="suf-cell"></td>
                      </tr>
                      <tr><td colspan="10" class="text-center">本月没有到期合同</td></tr></tbody>
                    </table>
                  </div>
                  <div id="workbench-tab-contract-load-more" class="text-center" style="display: none;"><a href="contract.html">查看更多到期合同</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="padding-horizontal-20 padding-top-20">
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <div class="page-header">
            <h4 class="page-title">客户分类统计</h4>
            <div class="page-header-actions">
              <div class="dropdown pull-left">
                <button type="button" class="btn btn-pure" data-toggle="modal" data-target="#groupUserModal" data-type="customerCategory">
                  按员工查看 <span class="caret"></span>
                </button>
              </div>
            </div>
          </div>
          <div class="page-content">
            <div class="panel" id="customerCategoryChart-panel">
              <div class="panel-body text-center padding-top-40">
                <div id="customerCategoryChart" style="width: 100%; height: 400px; -webkit-tap-highlight-color: transparent; user-select: none; position: relative; background: transparent;" _echarts_instance_="ec_1536573071075"><div style="position: relative; overflow: hidden; width: 850px; height: 400px; padding: 0px; margin: 0px; border-width: 0px;"><canvas width="850" height="400" data-zr-dom-id="zr_0" style="position: absolute; left: 0px; top: 0px; width: 850px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div></div></div>
              </div>
              <div class="panel-loading">
                <div class="loader loader-default"></div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-12 col-md-6">
          <div class="page-header">
            <h4 class="page-title">销售漏斗</h4>
            <div class="page-header-actions">
              <div class="dropdown pull-left">
                <button type="button" class="btn btn-pure" data-toggle="modal" data-target="#groupUserModal" data-type="salesFunnel">
                  按员工查看 <span class="caret"></span>
                </button>
              </div>
              <div class="dropdown pull-left">
                <button type="button" class="btn btn-pure dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <span id="salesFunnelStatistics-type-label">按创建时间统计</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu pull-right" role="menu" id="salesFunnelStatistics-type-menu">
                  <li><a href="#" data-value="1">按创建时间统计</a>
                  </li>
                  <li><a href="#" data-value="2">按签单时间统计</a>
                  </li>
                </ul>
              </div>
              <div class="dropdown pull-left">
                <button type="button" class="btn btn-pure dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <span id="salesFunnelStatistics-date-label">本周</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu pull-right" role="menu" id="salesFunnelStatistics-date-menu">
                  <li><a href="#" data-value="thisweek">本周</a></li>
                  <li><a href="#" data-value="lastweek">上周</a></li>
                  <li><a href="#" data-value="thismonth">本月</a></li>
                  <li><a href="#" data-value="lastmonth">上月</a></li>
                  <li><a href="#" data-value="all">全部</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="page-content">
            <div class="panel" id="funnelChart-panel">
              <div class="panel-body text-center padding-top-40">
                <div id="funnelChart" style="width: 100%; height: 400px; -webkit-tap-highlight-color: transparent; user-select: none; position: relative; background: transparent;" _echarts_instance_="ec_1536573071074"><div style="position: relative; overflow: hidden; width: 850px; height: 400px; padding: 0px; margin: 0px; border-width: 0px;"><canvas width="850" height="400" data-zr-dom-id="zr_0" style="position: absolute; left: 0px; top: 0px; width: 850px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div></div></div>
              </div>
              <div class="panel-loading">
                <div class="loader loader-default"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="taskModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">任务提醒详细信息</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="groupUserModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">请选择员工</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form class="form-horizontal padding-horizontal-20" id="group-user-search-form">
            <div class="form-group">
              <label class="control-label padding-right-20" for="search-groupId">部门</label>
              <select class="form-control select2-hidden-accessible" name="search-groupId" id="search-groupId" data-language="zh-CN" style="width:300px" tabindex="-1" aria-hidden="true"><option value="">全部</option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 300px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-groupId-container"><span class="select2-selection__rendered" id="select2-search-groupId-container" title="全部">全部</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
            <div class="form-group">
              <label class="control-label padding-right-20" for="search-userId">员工</label>
              <select class="form-control select2-hidden-accessible" name="search-userId" id="search-userId" data-plugin="select2" data-language="zh-CN" style="width:180px;" tabindex="-1" aria-hidden="true">
                <option value="">全部</option>
                <option value="QVtaSg==">孙伟</option>
              </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 180px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-search-userId-container"><span class="select2-selection__rendered" id="select2-search-userId-container" title="全部">全部</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-success btn-sm" id="group-user-select-btn">确定</button>
            </div>
          </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  /*<![CDATA[*/
  var _loginUserId = "QVtaSg==";
  var _pageSize = 10;
  var _users = [{"name":"\u5B59\u4F1F","imgPath":"images/person-avatar.png","valid":true,"encodedGroupId":"","encodedId":"QVtaSg=="}];
  var _searchUsers = [{"name":"\u5B59\u4F1F","imgPath":"images/person-avatar.png","valid":true,"encodedGroupId":"","encodedId":"QVtaSg=="}];

  var _groups = [];
  var _customerCategories = [{"id":124681,"name":"A(\u91CD\u70B9\u5BA2\u6237)","color":"#FF0000"},{"id":124682,"name":"B(\u666E\u901A\u5BA2\u6237)","color":"#FFFF00"},{"id":124683,"name":"C(\u4F4E\u4EF7\u503C\u5BA2\u6237)","color":"#00FF00"}];
  var _dealPhases = [{"id":124693,"name":"\u9700\u6C42\u63D0\u6848","color":"#000000"},{"id":124694,"name":"\u6295\u6807","color":"#000000"},{"id":124695,"name":"\u5546\u52A1\u8C08\u5224","color":"#000000"},{"id":124696,"name":"\u8D62\u5355","color":"#000000"}];
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
<script type="text/javascript" src="script/vendor/echarts.min.js"></script>
<script type="text/javascript" src="script/workbench.js"></script>


</body>
</html>