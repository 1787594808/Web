var sms = {
    surplus: 0, init: function () {
        var a = this;
        $("#smsModal").on("show.bs.modal", function (d) {
            if (isUndefined(d.relatedTarget)) {
                var b = (_targetType == ENTITY_CUSTOMER);
                a.loadMobiles(entity.selectEntityIds, b, true);
                return
            }
            var c = $(d.relatedTarget);
            a.loadMobiles(c.data("id"), c.data("iscustomer"), false)
        });
        $("#sms-template").change(function () {
            if ($(this).val() == "") {
                $("#sms-preview").text("");
                return
            }
            var b = $(this).find(":selected");
            $("#sms-preview").text("[" + b.data("autograph") + "]" + b.data("content") + "退订回T")
        });
        $("#send-sms-btn").click(function (b) {
            a.sendSMS()
        })
    }, loadMobiles: function (d, b, a) {
        var e = this;
        $("#sms-form .form-group").removeClass("has-error");
        $("#sms-mobiles").val("");
        $("#sms-surplus").text("0");
        e.surplus = 0;
        var c = "";
        if (b) {
            c = "/customer/"
        } else {
            c = "/contact/"
        }
        if (a) {
            c = c + "mobiles"
        } else {
            c = c + "mobile"
        }
        $.ajax({
            url: c, type: "POST", data: {id: d}, dataType: "json", timeout: 60000, error: function (h, f, g) {
                $("#sms-mobiles-tips").text("加载客户手机信息失败").closest(".form-group").addClass("has-error")
            }, success: function (f) {
                if (f.code <= 0) {
                    $("#sms-mobiles-tips").text("加载客户手机信息失败").closest(".form-group").addClass("has-error");
                    return
                }
                $("#sms-surplus").text(f.items.surplus);
                e.surplus = f.items.surplus;
                if (f.items.mobiles == "") {
                    $("#sms-mobiles-tips").text("该客户没有填写手机").closest(".form-group").addClass("has-error");
                    return
                }
                $("#sms-mobiles").val(f.items.mobiles);
                $("#sms-mobiles-num").text(f.items.totalNum)
            }
        })
    }, sendSMS: function () {
        if (this.surplus <= 0) {
            alertify.alert("您的短信余额为0，请联系客服充值");
            return
        }
        var b = $("#sms-mobiles").val();
        if (b == "") {
            alertify.alert("请填写需要发送的手机");
            return
        }
        var a = $("#sms-template").val();
        if (a == "") {
            alertify.alert("请选项需要发送的短信模版");
            return
        }
        var d = this;
        var c = $("#send-sms-btn").button("loading");
        $.ajax({
            url: "/sms/send",
            type: "POST",
            data: {templateId: a, mobiles: b},
            dataType: "json",
            timeout: 60000,
            error: function (g, e, f) {
                c.button("reset");
                alertify.alert("短信发送失败，请稍后再试")
            },
            success: function (e) {
                c.button("reset");
                if (e.code <= 0) {
                    alertify.alert(e.message);
                    return
                }
                toastr.success("短信发送成功，成功：" + e.items.successNum + " / 合计：" + e.items.totalNum);
                $("#smsModal").modal("hide")
            }
        })
    }
};
$(function () {
    sms.init()
});