function createPageNavi(g, o, p, c, q) {
    if (o <= 1) {
        $("#" + c).html("");
        return
    }
    g = parseInt(g);
    o = parseInt(o);
    var l = $("#" + c).html("");
    if (g > 1) {
        var j = $("<a class='page-prev' href='#' title='上一页'><span><i class='icon iconfont icon-left'></i></span></a>");
        j.click(function (i) {
            i.preventDefault();
            if (q) {
                q(g - 1)
            }
        });
        j.appendTo(l)
    }
    var a = g - 2;
    if (a <= 0) {
        a = 1
    }
    if (a > 1) {
        var f = $("<a href='#'>1</a>");
        f.click(function (i) {
            i.preventDefault();
            if (q) {
                q(1)
            }
        });
        f.appendTo(l);
        $("<span class='page-break'>...</span>").appendTo(l)
    }
    for (var e = a; e < g; e++) {
        var m = $("<a href='#'>" + e + "</a>");
        m.click(function (i) {
            i.preventDefault();
            if (q) {
                q($(this).text())
            }
        });
        m.appendTo(l)
    }
    $("<span class='page-cur'>" + g + "</span> ").appendTo(l);
    var d = g + 2;
    if (d > o) {
        d = o
    }
    for (var e = g + 1; e <= d; e++) {
        var m = $("<a href='#'>" + e + "</a>");
        m.click(function (i) {
            i.preventDefault();
            if (q) {
                q($(this).text())
            }
        });
        m.appendTo(l)
    }
    if (d < o) {
        $("<span class='page-break'>...</span>").appendTo(l);
        var h = $("<a href='#'>" + o + "</a>");
        h.click(function (i) {
            i.preventDefault();
            if (q) {
                q(o)
            }
        });
        h.appendTo(l)
    }
    if (g < o) {
        var n = $("<a href='#' class='page-next' title='下一页'><span><i class='icon iconfont icon-right'></i></span></a> ");
        n.click(function (i) {
            i.preventDefault();
            if (q) {
                q(g + 1)
            }
        });
        n.appendTo(l)
    }
    var k = $("<span class='page-skip'> 共 " + o + " 页，" + p + " 条 到第<input type='text' name='jumpto' class='jumpto' size='3' value='" + g + "'/>页</span> ");
    var b = $("<button class='margin-left-10 btn btn-default btn-sm'>确定</button>");
    b.click(function () {
        var i = k.find("input.jumpto").val();
        if (isNaN(i)) {
            alert("页面必须为数字");
            return
        }
        i = parseInt(i);
        if (i <= 0 || i > o) {
            alert("请输入1到" + o + "之间的数字");
            return
        }
        if (q) {
            q(i)
        }
    });
    b.appendTo(k);
    k.appendTo(l)
};