<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>表单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
</head>

<body>
<div style="margin: 15px;">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>任务主要信息</legend>
    </fieldset>

    <div class="layui-form-item">
        <label class="layui-form-label">任务名称</label>
        <div class="layui-input-block">
            <input type="text" id="taskName" lay-verify="required" autocomplete="off" placeholder="任务名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">任务链接</label>
        <div class="layui-input-block">
            <input type="text" id="taskUrl" lay-verify="required" autocomplete="off" placeholder="任务链接" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">线程数</label>
            <div class="layui-input-inline">
                <input type="number" id="threadCount" lay-verify="number" value="1" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">*线程数推荐5-10个</div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">爬取数量</label>
        <div class="layui-input-inline">
            <input type="text" id="jobCount" lay-verify="number" placeholder="" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">城市参数</label>
        <div class="layui-input-inline">
            <input type="text" id="cityKey" lay-verify="required" placeholder="城市参数名" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="text" id="cityValue" placeholder="城市参数值" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">关键字参数</label>
        <div class="layui-input-inline">
            <input type="text" id="keyWordKey" lay-verify="required" placeholder="关键字参数名" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="text" id="keyWordValue" lay-verify="required" placeholder="关键字值" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">页数</label>
        <div class="layui-input-inline">
            <input type="text" id="keyWordKey" lay-verify="required" placeholder="页数参数名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <br/>
    <br/>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>职位参数(Jquery选择器风格)</legend>
    </fieldset>

    <div class="layui-form-item">
        <label class="layui-form-label">职位名</label>
        <div class="layui-input-inline">
            <input type="text" id="jobName" lay-verify="required" placeholder="职位名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">职位地点</label>
        <div class="layui-input-inline">
            <input type="text" id="addressName" lay-verify="required" placeholder="职位地点" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">发布时间</label>
        <div class="layui-input-inline">
            <input type="text" id="createTime" lay-verify="required" placeholder="发布时间" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">薪资范围</label>
        <div class="layui-input-inline">
            <input type="text" id="minMoney" placeholder="最小薪资" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="text" id="maxMoney" placeholder="最大薪资" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">学历要求</label>
        <div class="layui-input-inline">
            <input type="text" id="educationRequire" placeholder="学历要求" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">公司名</label>
        <div class="layui-input-inline">
            <input type="text" id="companyName" placeholder="公司名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button id="submitButton" class="layui-btn" lay-submit="" lay-filter="demo1" onclick="addTask()">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</div>
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form(),
                layer = layui.layer,
                layedit = layui.layedit,
                laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function(value) {
                if(value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            content: function(value) {
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
    });

    document.ready(function () {
        $('input').blur(function(){

        });
    });

    function addTask() {

        $('#submitButton').attr('disable', 'disable');
        $('#submitButton').innerHTML('正在提交...');

        var taskName = $('#taskName').val();
        var taskUrl = $('#taskUrl').val();
        var threadCount = $('#threadCount').val();
        var jobCount = $('#jobCount').val();
        var cityKey = $('#cityKey').val();
        var cityValue = $('#cityValue').val();
        var keyWordKey = $('#keyWordKey').val();
        var keyWordValue = $('#keyWordValue').val();
        var jobName = $('#jobName').val();
        var addressName = $('#addressName').val();
        var createTime = $('#createTime').val();
        var minMoney = $('#minMoney').val();
        var maxMoney = $('#maxMoney').val();
        var educationRequire = $('#educationRequire').val();
        var companyName = $('#companyName').val();
        var content = $('#content').val();

        $.ajax({
            type : 'POST',
            url : 'doAddTask',
            data : {taskName : taskName, taskUrl : taskUrl, threadCount : threadCount, jobCount : jobCount, cityKey : cityKey, cityValue : cityValue,
                keyWordKey : keyWordKey, keyWordValue : keyWordValue, jobName : jobName, addressName : addressName, createTime : createTime, minMoney : minMoney,
                maxMoney : maxMoney, educationRequire : educationRequire, companyName : companyName, content : content},
            dataType : 'json',
            success : function (data) {
                if (data.status == 1) {
                    window.location.href='/index';
                } else if (data.status == 2) {
                    loginInfo(data.info, "red");
                    $("#loginInput").innerHTML("立即提交");
                    $("#loginInput").attr("disable", "");
                }
            }
        })
    }
</script>
</body>

</html>