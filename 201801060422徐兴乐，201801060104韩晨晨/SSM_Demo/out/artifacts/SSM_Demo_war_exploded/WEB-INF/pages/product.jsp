﻿<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="renderer" content="webkit"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<head>
<style type="text/css" id="alertifyCSS"></style>
<title>企客宝客户管理系统-产品信息</title>
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
<body class="app-product" style="padding-right: 0px;">
<div class="page narrow">
  <div class="aside">
  <div class="aside-header">
    <a href="#"><img class="brand-img" src="/images/logo-72.png"></a>
  </div>
  <div class="aside-navi-container">
    <div id="aside-navi-wrap" class="aside-navi-wrap asScrollable is-enabled asScrollable-vertical">
      <div class="asScrollable-container" style="height: 725px; width: 87px;">
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
    <div class="asScrollable-bar asScrollable-bar-vertical asScrollable-bar-hide is-disabled" draggable="false"><div class="asScrollable-bar-handle"></div></div></div>
  </div>
</div>
  <div class="page-main">
    <div class="page-main-header">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
      <div class="narrow"><a href="#" id="navi-narrow-link" data-narrow="1"><i class="iconfont"></i></a></div>
      <div class="navbar-header">产品信息</div>
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
    <div class="page-main-container flex-container">
      <div class="page-main-aside">
        <div class="page-aside-inner">
          <div data-role="container">
            <div data-role="content">
              <section class="page-aside-section">
                <h5 class="page-aside-title">产品分类</h5>
                <div id="productCategoriesTree" class="treeview"><ul class="list-group"><li class="list-group-item node-productCategoriesTree" data-nodeid="0" style="color:undefined;background-color:undefined;"><span class="icon expand-icon iconfont icon-folder-open"></span>总分类<a class="action-icon pull-right action-icon-delete icon iconfont icon-close" href="#"></a><a class="action-icon pull-right action-icon-edit icon iconfont icon-edit" href="#"></a><a class="action-icon pull-right action-icon-add icon iconfont icon-plus" href="#"></a></li><li class="list-group-item node-productCategoriesTree node-selected" data-nodeid="1" style="color:#FFFFFF;background-color:#3949ab;"><span class="indent"></span><span class="icon expand-icon iconfont icon-folder-open"></span>221<a class="action-icon pull-right action-icon-delete icon iconfont icon-close" href="#"></a><a class="action-icon pull-right action-icon-edit icon iconfont icon-edit" href="#"></a><a class="action-icon pull-right action-icon-add icon iconfont icon-plus" href="#"></a></li></ul></div>
              </section>
            </div>
          </div>
        </div>
      </div>
      <div class="page-main-content">
        <div class="pull-right page-main-actions">
          <button type="button" data-toggle="modal" data-target="#productModal" class="btn btn-success btn-sm">
            创建产品信息
          </button>
        </div>
        <div class="padding-top-20"></div>
        <hr>
        <div>
  <input type="hidden" id="isSelectModal" value="0">
  
  <div class="action-bar padding-top-10 clearfix">
    <div class="pull-right">
      <div>
  <form id="search-field-form">
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-btn auto-width dropdown" id="search-dropdown">
          <button class="btn btn-default btn-inverse" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span id="search-dropdown-label" data-id="name" data-description="1" data-type="1">产品名</span>
            <span class="caret"></span>
          </button>
          <div class="dropdown-menu" role="menu">
            <div class="dropdown-menu-list" style="max-height:400px;" id="search-dropdown-list">
              <div data-role="container">
                <div data-role="content">
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-description="1" data-id="name" data-type="1">产品名</a></div>
                  
                  
                  <div role="presentation" class="dropdown-menu-item">
                    <a href="#" role="menuitem" data-id="124569" data-type="1" data-description="2">简介</a>
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

    <button type="button" class="btn btn-sm btn-default" id="entity-list-delete-btn" data-name="product" data-containerid="product-item-list" data-confirm="确认要删除该产品信息吗？删除后不可恢复">
      <i class="icon iconfont icon-trash" aria-hidden="true"></i>删除
    </button>

    <span class="dropdown" id="dropdown-entity-fields">
  <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">显示列
    <span class="caret"></span></button>
  <div class="dropdown-menu dropdown-menu-checkbox-container" role="menu" id="entity-fields-container">
    <div class="dropdown-menu-checkbox-list">
      <div data-role="container">
        <div data-role="content">
          <span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="no" id="entity-setting-field-item-no" checked="checked">
              <label for="entity-setting-field-item-no">编号</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="unit" id="entity-setting-field-item-unit" checked="checked">
              <label for="entity-setting-field-item-unit">单位</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="amount" id="entity-setting-field-item-amount" checked="checked">
              <label for="entity-setting-field-item-amount">销售价格</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="cost" id="entity-setting-field-item-cost" checked="checked">
              <label for="entity-setting-field-item-cost">成本</label>
            </div>
          </span><span role="presentation" class="padding-horizontal-20 checkbox-item">
            <div class="checkbox-custom checkbox-dark">
              <input type="checkbox" name="field-checkbox" value="124569" id="entity-setting-field-item-124569">
              <label for="entity-setting-field-item-124569">简介</label>
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

  <div class="table-responsive page-content-table padding-top-20" id="product-item-list">
    <table class="table table-pointer table-hover sindu_origin_table" id="product-list-table">
      <thead>
      <tr data-product="true">
        <th class="cell-60 text-center idx">
          <div class="checkbox-custom checkbox-primary">
            <input type="checkbox" name="item-all-checkbox">
            <label></label>
          </div>
        </th>
        <th class="cell-300">
          <a class="sort-title asc" href="#" data-sortfield="" data-sortorder="1">产品名称</a>
        </th>
        
        <th id="header-field-no" class="handle cell-180 sindu_handle" data-field="no">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="no">编号</a>
          
        </th>
        <th id="header-field-unit" class="handle cell-180 sindu_handle" data-field="unit">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="unit">单位</a>
          
        </th>
        <th id="header-field-amount" class="handle cell-180 sindu_handle" data-field="amount">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="amount">销售价格</a>
          
        </th>
        <th id="header-field-cost" class="handle cell-180 sindu_handle" data-field="cost">
          <a href="#" data-sortorder="0" class="sort-title" data-sortfield="cost">成本</a>
          
        </th>
        <th id="header-field-124569" class="handle cell-180 hide sindu_handle" data-field="124569">
          
          <span>简介</span>
        </th>
        
        
        
        
        
        <th></th>
      </tr>
      </thead>
      <tbody id="product-body">
      <tr id="product-item-clone" class="hide">
        <td class="idx">
          <div class="checkbox-custom checkbox-primary">
            <input type="checkbox" name="item-checkbox">
            <label></label>
          </div>
        </td>
        <td>
          <a href="#" class="item-name">
            <span class="label label-danger margin-right-5 hide">无效</span>
          </a>
        </td>
        
        <td class="item-no">
          
        </td>
        <td class="item-unit">
          
        </td>
        <td class="item-amount">
          
        </td>
        <td class="item-cost">
          
        </td>
        <td class="item-124569 hide">
          
        </td>
        <td class="suf-cell"></td>
      </tr>
      </tbody>
    </table>
  </div>

  <div>
    <div class="pull-right">
      <span class="dropup" id="product-dropdown-menu-pageSize" style="display: none;">
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
      <div class="page-bottom" id="product-item-pageNavi" style="display: none;"></div>
    </div>
  </div>

  <div class="loading" id="product-search-loading" style="display: none;">
  <div class="liner">
    <h3>加载中...</h3>
    <img alt="加载中" src="/images/dots-white.gif">
  </div>
</div>

  <div id="product-blank" class="loading" style="display: block;">
  <div class="liner">
    <h3>没有找到相关产品信息</h3>
  </div>
</div>
</div>
      </div>
    </div>
  </div>
</div>

<input type="hidden" id="showAddAction" value="1">


<input type="hidden" id="showUpdateAction" value="1">


<input type="hidden" id="showDeleteAction" value="1">


<div class="modal fade" id="productCategoryModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title" id="product-categoryModal-title">创建产品分类</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-add-product-category">
          <div class="form-group">
            <label class="control-label required" for="product-category-name">分类名称</label>
            <input class="form-control" id="product-category-name" name="product-category-name" data-field-required="true" value="">
            <small class="help-block"></small>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="add-update-product-category-btn" type="button">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="productModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">创建产品信息</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form class="form-horizontal" id="form-add-product">
          <div class="form-group">
            <label class="col-sm-3 control-label required" for="product-name">产品名称</label>
            <div class="col-sm-9">
              <input class="form-control" id="product-name" name="product-name" data-field-required="true" value="">
              <small class="help-block"></small>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-3 control-label required" for="product-no">产品编号</label>
            <div class="col-sm-9">
              <input class="form-control" id="product-no" name="product-no" data-field-required="true" value="">
              <small class="help-block"></small>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-3 control-label" for="product-productCategoryId">产品分类</label>
            <div class="col-sm-9">
              <select class="form-control select2-hidden-accessible" name="product-productCategoryId" id="product-productCategoryId" data-plugin="select2" data-language="zh-CN" data-width="100%" tabindex="-1" aria-hidden="true"><option value="">全部</option><option value="Q0Va">221</option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-product-productCategoryId-container"><span class="select2-selection__rendered" id="select2-product-productCategoryId-container" title="全部">全部</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-3 control-label required" for="product-unit">产品单位</label>
            <div class="col-sm-9">
              <input class="form-control" id="product-unit" name="product-unit" data-field-required="true" value="">
              <small class="help-block"></small>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-3 control-label required" for="product-amount">产品售价</label>
            <div class="col-sm-9">
              <input class="form-control" id="product-amount" name="product-amount" data-field-required="true" data-field-number="true" value="">
              <small class="help-block"></small>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-3 control-label" for="product-cost">产品成本</label>
            <div class="col-sm-9">
              <input class="form-control" id="product-cost" name="product-cost" data-field-number="true" value="">
              <small class="help-block"></small>
            </div>
          </div>

          <div id="entity-field-custom">

  <div class="form-group">

    <label class="col-sm-3 control-label" for="product-field-custom-124569">简介</label>

    <div class="col-sm-9">
      

      <textarea class="form-control" name="product-field-124569" data-field-required="false" data-duplicate-key="124569" data-duplicate="false"></textarea>

      

      

      

      

      

      

      

      

      

      
      <small class="help-block"></small>
    </div>
  </div>
</div>

          <div class="form-group">
            <a class="col-sm-12 toggle-entity-field-custom-link" href="#"><i class="icon iconfont icon-plus"></i>
              显示更多</a>
          </div>

        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="add-product-btn" type="button">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="attachmentModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-center">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
        <h4 class="modal-title">上传附件</h4>
      </div>
      <div class="modal-body padding-horizontal-20">
        <form id="form-add-attachment">
          <div class="form-group">
            <label class="control-label">附件</label>
            <div>
              <span id="attachment-fileupload-btn-container">
                <button type="button" id="attachment-fileupload-btn" class="btn btn-pure btn-dark icon iconfont icon-attachment"> 添加附件 </button>
              </span>
              <div id="attachment-upload-attachments" class="upload-attachments">
                <div class="upload-attachment-item hide" id="attachment-upload-attachment-item-clone">
                  <i class="icon iconfont icon-attachment"></i>
                  <span class="file-name padding-right-5"></span>(<span class="file-size"></span>)
                  <span class="file-progress padding-left-10"></span>
                  <a href="#" class="file-remove-link">删除</a>
                </div>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label" for="attachment-remark">备注</label>
            <textarea class="form-control" id="attachment-remark" name="attachment-remark"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" id="add-attachment-btn" type="button">确定</button>
        <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  /*<![CDATA[*/
  var _loginUserId = "QVtaSg==";
  var _pageSize = 10;

  // 产品分类
  var _productCategories = [{"name":"221","level":0,"children":[],"encodedId":"Q0Va","encodedParentId":""}];


  var _users = [{"name":"\u5B59\u4F1F","imgPath":"images/person-avatar.png","valid":true,"encodedGroupId":"","encodedId":"QVtaSg=="}];

  // 自定义字段
  var _fields = [{"id":124569,"name":"\u7B80\u4ECB","required":false,"phoneField":false,"extend":true,"defaultShow":true,"wxfield":false,"descriptionIntValue":2}];
  var _showFieldIds = "no,unit,amount,cost";
  var _sortField = "";
  var _sortOrder = 0;

  var _targetType = 8;
  var _targetId = "";

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
<script type="text/javascript" src="script/product.js"></script>
<script type="text/javascript" src="script/product-category.js"></script>
<script type="text/javascript" src="script/pageNavi.js"></script>
<script type="text/javascript" src="script/product-list.js"></script>


</body>
</html>