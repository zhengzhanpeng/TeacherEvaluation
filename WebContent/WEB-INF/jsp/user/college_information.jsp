<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>学院信息</title>
	<link rel="stylesheet" type="text/css" href="../plugins/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="../css/query.css">
	<link rel="stylesheet" type="text/css" href="../css/jquery.edittable.css">
	<style>
		.layui-form-label{
		width:112px  !important; 
		}
		.layui-form-item{
		margin-left:20px  !important;
		}
		.layui-input-block{
		width:250px  !important;
		}
	</style>
</head>
<body>
	<div style="margin: 15px">
		<blockquote class="layui-elem-quote">
			<h2 style="font-size: 20px" class="layui-inline">
				<i class="layui-icon" style="font-size: 30px">&#xe629;</i> 学院信息</h2>
		</blockquote>

		<hr>
		<fieldset class="layui-elem-field">
			<legend>学院信息</legend>
			
      <form class="layui-form layui-form-pane" action="">
        <div class="layui-form-item">
          <label class="layui-form-label">学院名称</label>
          <div class="layui-input-block">
            <input type="text" name="title" disabled="disabled" value="${college.collegeName }"  class="layui-input">
          </div>
        </div>
		 <div class="layui-form-item">
          <label class="layui-form-label">联系电话</label>
          <div class="layui-input-block">
            <input id="phone" type="text" name="title" placeholder="请输联系方式" value="${college.phone }" class="layui-input">
          </div>
        </div>
        <div class="layui-form-item">
          <button id="save" class="layui-btn" lay-submit="" lay-filter="formDemoPane">保存修改</button>
        </div>
      </form>
 
		</fieldset>
		
	</div>
 
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
 
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../plugins/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use(['laydate', 'jquery', 'form'], function() {
			var $ = layui.jquery;
			$("#date").click(function() {
				layui.laydate({
					elem: this
				});
			});
		});
	</script>
	
	<script type="text/javascript">
  $(function(){
       	$("#save").click(function () {
       		$.post("set_phone", {phone: $("phone").val()}, function (data, staus) {
       			if(data == 1) {
       				layer.msg("保存成功");
       			} else {
       				layer.msg(data);
       			}
       		})
       	});
   });
    
   </script>
	
</body>
</html>