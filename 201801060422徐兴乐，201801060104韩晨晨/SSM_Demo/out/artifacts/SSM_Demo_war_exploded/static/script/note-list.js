var noteList = {
    totalNum: 0,
    totalPage: 0,
    currentPage: 0,
    targetIds: new Array(),
    searchParams: {createUserId: "", offset: 0, pageSize: _pageSize, startContactDate: "", endContactDate: ""},
    init: function () {
        var a = this;
        $('[data-tooltip="tooltip"]').tooltip({trigger: "hover"});
        entity.initSearchCustomerSelect("search-customerId");
        $("#search-contactDate").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayBtn: "linked",
            clearBtn: true
        });
        $("#search-createUserId").select2({dropdownAutoWidth: true});
        $("#search-note-form").submit(function (b) {
            a.loadNote(1);
            return false
        });
        entity.initPageSizeDropMenu(function (b) {
            a.searchParams.pageSize = b;
            a.loadNote(1)
        });
        a.loadNote(1)
    },
    loadNote: function (a) {
        var b = this;
        $("#search-loading").show();
        $("#item-pageNavi, #note-blank, #dropdown-menu-pageSize").hide();
        $("#entity-item-list .list-item").remove();
        b.searchParams.offset = (a - 1) * b.searchParams.pageSize;
        b.searchParams.searchKey = $("#search-term").val();
        b.searchParams.startContactDate = $("#search-startContactDate").val();
        b.searchParams.endContactDate = $("#search-endContactDate").val();
        b.searchParams.createUserId = $("#search-createUserId").val();
        b.searchParams.customerId = $("#search-customerId").val();
        b.currentPage = a;
        b.targetIds.length = 0;
        $.ajax({
            url: "/note/search",
            type: "POST",
            data: b.searchParams,
            dataType: "json",
            timeout: 60000,
            error: function (e, c, d) {
                $("#search-loading").hide();
                alertify.alert("跟进记录加载失败，请稍后再试")
            },
            success: function (c) {
                $("#search-loading").hide();
                if (c.code <= 0) {
                    alertify.alert(c.message);
                    return
                }
                if (b.searchParams.offset == 0) {
                    b.totalNum = c.items.totalNum;
                    b.totalPage = Math.ceil(b.totalNum / b.searchParams.pageSize);
                    if (b.totalNum == 0) {
                        $("#note-blank").show();
                        return
                    }
                }
                $.each(c.items.notes, function (d, e) {
                    b.showNoteItem(d, e)
                });
                $("#item-pageNavi, #dropdown-menu-pageSize").show();
                b.loadEntitiesName();
                createPageNavi(a, b.totalPage, b.totalNum, "item-pageNavi", function (d) {
                    b.loadNote(d)
                })
            }
        })
    },
    showNoteItem: function (b, c) {
        var e = $("#note-body");
        var d = $("#item-clone").clone(true);
        d.removeClass("hide").addClass("list-item").attr("id", "note-item-" + c.encodedId);
        d.find(".idx").text(b + 1);
        var a = entity.getUser(_users, c.encodedCreateUserId);
        d.find("td.note-createUser").text(a.name);
        d.find("td.note-contactDate").text(getFormatDate(c.contactDate, "YYYY-MM-DD HH:mm:ss"));
        d.find("td.note-remark").text(c.remark);
        d.find("a.note-customerName").attr("id", "note-item-" + c.encodedCustomerId + "-" + ENTITY_CUSTOMER).attr("href", entity.getEntityUrl(c.encodedCustomerId, ENTITY_CUSTOMER));
        d.find("a.note-contactName").attr("id", "note-item-" + c.encodedContactId + "-" + ENTITY_CONTACT).attr("href", entity.getEntityUrl(c.encodedContactId, ENTITY_CONTACT));
        d.find("a.note-targetName").attr("id", "note-item-" + c.encodedTargetId + "-" + c.targetType).attr("href", entity.getEntityUrl(c.encodedTargetId, c.targetType));
        this.addEntity({id: c.encodedCustomerId, type: ENTITY_CUSTOMER});
        this.addEntity({id: c.encodedContactId, type: ENTITY_CONTACT});
        this.addEntity({id: c.encodedTargetId, type: c.targetType});
        d.appendTo(e)
    },
    addEntity: function (a) {
        var c = this;
        var b = false;
        $.each(c.targetIds, function (d, e) {
            if (e.id == a.id && e.type == a.type) {
                b = true;
                return false
            }
        });
        if (b) {
            return
        }
        c.targetIds.push({id: a.id, type: a.type})
    },
    loadEntitiesName: function () {
        var a = this;
        if (a.targetIds.length == 0) {
            return
        }
        $.ajax({
            url: "/entity/names",
            type: "POST",
            data: {targetIds: JSON.stringify(a.targetIds)},
            dataType: "json",
            timeout: 60000,
            error: function (d, b, c) {
                alertify.alert("加载跟进记录客户信息失败，请稍后再试")
            },
            success: function (b) {
                if (b.code <= 0) {
                    alertify.alert(b.message);
                    return
                }
                if (b.items.totalNum == 0) {
                    return
                }
                $.each(b.items.names, function (c, d) {
                    $("[id='note-item-" + d.id + "-" + d.type + "']").text(d.text)
                })
            }
        })
    }
};
$(function () {
    noteList.init()
});