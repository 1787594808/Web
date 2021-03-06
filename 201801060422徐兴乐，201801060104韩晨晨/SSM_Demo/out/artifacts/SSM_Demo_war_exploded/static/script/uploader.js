var pluploadUploader = {
    policy: {}, expire: 0, getPolicy: function (c, a) {
        var d = this;
        var b = Date.parse(new Date()) / 1000;
        if (d.expire >= b) {
            return
        }
        $.ajax({
            url: "/filePolicy",
            type: "POST",
            data: {targetId: c, targetType: a},
            async: false,
            dataType: "json",
            timeout: 60000,
            success: function (e) {
                if (e.code <= 0) {
                    alertify.alert("文件上传失败，文件认证信息取得失败");
                    d.expire = 0;
                    return
                }
                d.expire = e.items.expire;
                d.policy = e.items
            }
        })
    }, addFileItem: function (a, c, d) {
        var b = $("#" + c).clone(true).data("file", a).addClass("attachment-item").removeClass("hide");
        b.find("i").addClass(getFileIcon(a.originalFileName));
        b.find("span.file-name").text(a.originalFileName);
        b.find("span.file-size").text(plupload.formatSize(a.size));
        b.find("a.file-remove-link").click(function (f) {
            f.preventDefault();
            b.remove()
        });
        b.appendTo($("#" + d))
    }, getUploader: function (f, c, e, a, b, d) {
        var g = this;
        return new plupload.Uploader({
            runtimes: "html5,flash,silverlight,html4",
            browse_button: f,
            multi_selection: c,
            container: document.getElementById(e),
            flash_swf_url: "/script/vendor/Moxie.swf",
            silverlight_xap_url: "/script/vendor/Moxie.xap",
            url: "",
            filters: {max_file_size: "10mb", prevent_duplicates: false},
            init: {
                FilesAdded: function (h, k) {
                    if (!c) {
                        $("#" + b + " .attachment-item").remove();
                        for (var j = h.files.length - 2; j >= 0; j--) {
                            h.removeFile(h.files[j])
                        }
                    }
                    plupload.each(k, function (i) {
                        var l = $("#" + a).clone(true).addClass("attachment-item").removeClass("hide").attr("id", "file-item-" + i.id);
                        l.find("span.file-name").text(i.name);
                        l.find("span.file-size").text(plupload.formatSize(i.size));
                        l.find("a.file-remove-link").click(function (m) {
                            m.preventDefault();
                            h.removeFile(i);
                            l.remove()
                        });
                        l.appendTo($("#" + b))
                    })
                }, BeforeUpload: function (i, l) {
                    var j = getSuffix(l.name);
                    if (j != "") {
                        j = "." + j
                    }
                    var h = g.policy.dir + "/" + getRandFileName(32) + j;
                    l.uploadPath = h;
                    var k = {
                        key: h,
                        policy: g.policy.policyBase64,
                        OSSAccessKeyId: g.policy.accessId,
                        success_action_status: "200",
                        signature: g.policy.signature,
                    };
                    i.setOption({url: g.policy.host, multipart_params: k});
                    i.start()
                }, UploadProgress: function (h, i) {
                    $("#file-item-" + i.id).find("a.file-remove-link").remove();
                    $("#file-item-" + i.id).find("span.file-progress").text(i.percent + "%")
                }, FileUploaded: function (h, i, j) {
                    if (j.status == 200) {
                        $("#file-item-" + i.id).find("span.file-progress").html("<i class='iconfont icon-enable text-success'></i>");
                        return
                    }
                    $("#file-item-" + i.id).find("span.file-progress").html(j.response)
                }, Error: function (h, i) {
                    if (i.code == plupload.FILE_SIZE_ERROR) {
                        alertify.alert("文件上传失败，您上传的文件超过大小限制");
                        return
                    }
                    if (i.code == plupload.FILE_DUPLICATE_ERROR) {
                        alertify.alert("请不要重复上传同一个文件");
                        return
                    }
                    alertify.alert("文件上传失败：" + i.response)
                }, UploadComplete: function (h, j) {
                    var i = new Array();
                    $.each(j, function (k, l) {
                        if (l.status == plupload.DONE) {
                            $("#file-item-" + l.id).data("file", {
                                fileName: l.uploadPath,
                                originalFileName: l.name,
                                size: l.origSize
                            })
                        } else {
                            $("#file-item-" + l.id).data("file", "")
                        }
                    });
                    j.length = 0;
                    d()
                }
            }
        })
    }
};