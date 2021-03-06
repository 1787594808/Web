var importHistoryList = {
    totalNum: 0, totalPage: 0, currentPage: 0, searchParams: {offset: 0, pageSize: _pageSize}, init: function () {
        var a = this;
        $("#import-history-createDate").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayBtn: "linked",
            clearBtn: true
        });
        $("#entity-import-history-form").submit(function (b) {
            a.loadHistory(1);
            return false
        })
    }, loadHistory: function (b) {
        $("#import-history-search-loading").show();
        $("#import-history-item-pageNavi, #import-history-blank").hide();
        $("#import-history-body .list-item").remove();
        var c = this;
        c.searchParams.offset = (b - 1) * c.searchParams.pageSize;
        c.searchParams.userId = $("#import-history-ownerUserId").val();
        c.searchParams.startCreateDate = $("#import-history-startCreateDate").val();
        c.searchParams.endCreateDate = $("#import-history-endCreateDate").val();
        c.currentPage = b;
        var a = "";
        if (_targetType == ENTITY_CUSTOMER) {
            a = "/customer/import/history"
        } else {
            if (_targetType == ENTITY_CONTACT) {
                a = "/contact/import/history"
            } else {
                return
            }
        }
        $.ajax({
            url: a,
            type: "POST",
            data: c.searchParams,
            dataType: "json",
            timeout: 60000,
            error: function (f, d, e) {
                $("#product-search-loading").hide();
                alertify.alert("加载产品信息失败，请稍后再试")
            },
            success: function (d) {
                $("#import-history-search-loading").hide();
                if (d.code <= 0) {
                    alertify.alert(d.message);
                    return
                }
                if (c.searchParams.offset == 0) {
                    c.totalNum = d.items.totalNum;
                    c.totalPage = Math.ceil(c.totalNum / c.searchParams.pageSize);
                    if (c.totalNum == 0) {
                        $("#import-history-blank").show();
                        return
                    }
                }
                $.each(d.items.histories, function (e, f) {
                    c.showItem(e, f)
                });
                $("#import-history-item-pageNavi").show();
                createPageNavi(b, c.totalPage, c.totalNum, "import-history-item-pageNavi", function (e) {
                    c.loadHistory(e)
                })
            }
        })
    }, showItem: function (a, c) {
        var f = $("#import-history-body");
        var d = $("#import-history-item-clone").clone(true);
        d.removeClass("hide").addClass("list-item");
        d.find("td.item-idx").text(a + 1);
        if (_targetType == ENTITY_CUSTOMER) {
            d.find("td.item-type").text(c.visible == VISIBLE_PRIVATE ? "个人" : "公海");
            var e = "";
            if (c.visible == VISIBLE_PRIVATE) {
                e = entity.getUserName(entity.getUser(_users, c.encodedOwnerId))
            } else {
                e = "公海"
            }
            d.find("td.item-owner").text(e)
        }
        d.find("td.item-successNum").text(c.successNum);
        d.find("td.item-failedNum").text(c.failedNum);
        d.find("td.item-createUser").text(entity.getUserName(entity.getUser(_users, c.encodedCreateUserId)));
        d.find("td.item-createDate").text(getFormatDate(c.createDate, "YYYY-MM-DD HH:mm"));
        var b = "";
        if (_targetType == ENTITY_CUSTOMER) {
            b = "/customer/import/result?file="
        } else {
            b = "/customer/import/result?file="
        }
        b = b + c.fileName + "&userId=" + encodeURIComponent(c.encodedCreateUserId);
        d.find("a.btn-download").attr("href", b);
        d.appendTo(f)
    }
};
$(function () {
    importHistoryList.init()
});