<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
			<div class="tab-content" id="tab4">
					<fieldset>
					<p style="font-size: 18px;font-weight: bold;text-align: center;">${requestScope.rnews.title}</p>
					<p style="text-align: center;">------------------------------------------------------------------------------------------------------------</p>
					<p style="text-align: center;color: red;">作者：${requestScope.rnews.author}  </p>
					<p style="text-align: center;color: red;">发表时间：${requestScope.rnews.pubtime}</p>
					<p style="color: graytext;">${requestScope.rnews.content}内容</p>
					</fieldset>
					<div class="clear"></div><!-- End .clear -->
			</div>  <!-- End #tab4 -->
