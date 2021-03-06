<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="renderer" content="webkit"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<head><style type="textcss" id="alertifyCSS">/* style.css */</style>
  <title>企客宝客户管理系统-客户一览</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
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
<style type="textcss">
.sindu_dragger{list-style:none;margin:0;padding:0;overflow:hidden;box-sizing:border-box}
.sindu_handle{cursor:move}.sindu_dragger li{margin:0;padding:0;list-style:none;text-align:inherit}
.sindu_dragger li table,.sindu_dragger td,.sindu_dragger th,.sindu_dragger tr{box-sizing:border-box}
.gu-mirror{list-style:none}
.sindu_dragger.sindu_column li{float:left}
.sindu_dragging .sindu_origin_table{visibility:hidden}
.gu-mirror{position:fixed!important;margin:0!important;z-index:9999!important;opacity:.8}
.gu-mirror li{margin:0;padding:0;list-style:none;text-align:inherit}
.gu-mirror li table,.gu-mirror td,.gu-mirror th,.gu-mirror tr{box-sizing:border-box}
.gu-hide{display:none!important}
.gu-unselectable{-webkit-user-select:none!important;-moz-user-select:none!important;-ms-user-select:none!important;user-select:none!important}
.gu-transit{opacity:.5}
</style>
</head>

<body class="app-setting">
<div class="page narrow">
  <div class="aside">
  <div class="aside-header">
    <a href="#"><img class="brand-img" src="images/logo-72.png"></a>
  </div>
  <div class="aside-navi-container">
    <div id="aside-navi-wrap" class="aside-navi-wrap asScrollable is-enabled asScrollable-vertical">
      <div class="asScrollable-container" style="height: 463px; width: 87px;">
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
    <div class="asScrollable-bar asScrollable-bar-vertical asScrollable-bar-hide" draggable="false"><div class="asScrollable-bar-handle" style="height:299.627px;"></div></div></div>
  </div>
</div>
  <div class="page-main">
    <div class="page-main-header">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
      <div class="narrow"><a href="#" id="navi-narrow-link" data-narrow="1"><i class="iconfont"></i></a></div>
      <div class="navbar-header">系统设置</div>
      <div class="collapse navbar-collapse navbar-collapse-toolbar">
        <div class="navbar-search">
          <form>
            <div class="form-group">
              <div class="input-search">
                <i class="search-icon iconfont icon-search"></i>
                <span class="twitter-typeahead" style="position: relative; display: inline-block;"><input type="text" class="form-control typeahead tt-hint" data-step="1" data-intro="快捷高效的模糊检索功能，帮您快速找到想要查看的客户" readonly="" autocomplete="off" spellcheck="false" tabindex="-1" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0);" dir="ltr"><input type="text" class="form-control typeahead tt-input" id="navbar-search-term" placeholder="输入客户名快速检索..." data-step="1" data-intro="快捷高效的模糊检索功能，帮您快速找到想要查看的客户" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;"><pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Microsoft YaHei&quot;, simsun; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre><div class="tt-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;"><div class="tt-dataset tt-dataset-search-cutomers"></div></div></span>
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
                    <a class="list-group-item" role="menuitem" href="/customer?ownerUserId=&amp;endNextContactDate=2018-09-11">
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
            <img src="images/appqrcode.png?ver=1.11.0.1" width="200" height="200">
            <p class="padding-top-10 text-muted">微信扫一扫下载</p>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
    <div class="page-main-container flex-container">
      <div class="page-main-aside">
  
    <section class="page-aside-section">
      <h5 class="page-aside-title">系统设置</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/company">
          <span class="list-group-item-content">企业信息</span>
        </a>
        <a class="list-group-item" href="/setting/group">
          <span class="list-group-item-content">部门管理</span>
        </a>
        <a class="list-group-item" href="/setting/user">
          <span class="list-group-item-content">员工管理</span>
        </a>
        <a class="list-group-item" href="/setting/auth">
          <span class="list-group-item-content">权限管理</span>
        </a>
        <a class="list-group-item" href="/setting/access">
          <span class="list-group-item-content">访问控制</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">业务相关</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/duplicate">
          <span class="list-group-item-content">数据查重</span>
        </a>
        <a class="list-group-item" href="/setting/commonCustomer">
          <span class="list-group-item-content">公海列表</span>
        </a>
        <a class="list-group-item" href="/setting/commonCustomer/setting">
          <span class="list-group-item-content">公海设置</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">自定义信息设置</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/field">
          <span class="list-group-item-content">自定义字段</span>
        </a>
        <a class="list-group-item" href="/setting/dictionary">
          <span class="list-group-item-content">初始分类设置</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">合同设置</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/contract/template">
          <span class="list-group-item-content">合同模板</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">工单设置</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/worksheet/template">
          <span class="list-group-item-content">工单模板</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">短信设置</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/sms/recharge">
          <span class="list-group-item-content">短信余额</span>
        </a>
        <a class="list-group-item" href="/setting/sms/template">
          <span class="list-group-item-content">短信模板</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">呼叫中心</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/callCenter/seat">
          <span class="list-group-item-content">坐席一览</span>
        </a>
        <a class="list-group-item" href="/setting/callCenter">
          <span class="list-group-item-content">通话设置</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">微信坐席</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/weixin/seat">
          <span class="list-group-item-content">微信坐席</span>
        </a>
      </div>
    </section>
  

  
    <section class="page-aside-section">
      <h5 class="page-aside-title">其他</h5>
      <div class="list-group">
        <a class="list-group-item" href="/setting/log">
          <span class="list-group-item-content">日志查询</span>
        </a>
      </div>
    </section>
  

</div>
      <div class="page-main-content">
        <h2>系统设置介绍信息</h2>
        <p>针对每个客户不同的需求和使用场景，我们提供了丰富的系统设置功能</p>
        <ul>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 企业信息</b>
            <p class="padding-left-10">可以修改企业基本信息以及设置企业个性化LOGO</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 部门设置</b>
            <p class="padding-left-10">可以针对公司的部门信息进行维护，支持多级子部门</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 员工设置</b>
            <p class="padding-left-10">在员工设置中，可以查看到注册申请的员工，并审核通过，同时可以管理公司名下所有的员工信息</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 权限设置</b>
            <p class="padding-left-10">可以创建不同的角色，并且分配每个角色不同的操作权限</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 数据查重</b>
            <p class="padding-left-10">可以根据自己公司实际的业务需求，设置客户，联系人的数据查重字段，保证数据的唯一性，避免重复</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 公海设置</b>
            <p class="padding-left-10">提供了灵活多变的公海设置，极大限度的提高了公司客户的流转</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 自定义字段</b>
            <p class="padding-left-10">提供了丰富的自定义字段设置，用于满足您的不同的业务需求</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 初始分类设置</b>
            <p class="padding-left-10">针对每项业务都提供了丰富的自定义功能</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i>工单模版</b>
            <p class="padding-left-10">根据您的业务流程，可以创建不同的工单模版</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i>短信余额</b>
            <p class="padding-left-10">了解您目前的短信余额以及充值明细</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i>短信模版</b>
            <p class="padding-left-10">创建用于发送的短信模版</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i>坐席一览</b>
            <p class="padding-left-10">根据您购买的呼叫中心的用户数，开通相关的坐席</p>
          </li>
          <li>
            <b><i class="iconfont icon-small-circle"></i> 日志查询</b>
            <p class="padding-left-10">提供了详细的日志查询功能，保障系统稳定运行，有据可查</p>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
</body>
</html>