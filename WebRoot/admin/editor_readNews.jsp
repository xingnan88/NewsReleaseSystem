<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
			<div class="tab-content" id="tab4">
					<fieldset>
					<p style="font-size: 18px;font-weight: bold;text-align: center;">${requestScope.rnews.title}</p>
					<p style="text-align: center;">------------------------------------------------------------------------------------------------------------</p>
					<p style="text-align: center;color: red;">���ߣ�${requestScope.rnews.author}  </p>
					<p style="text-align: center;color: red;">����ʱ�䣺${requestScope.rnews.pubtime}</p>
					<p style="color: graytext;">${requestScope.rnews.content}����</p>
					</fieldset>
					<div class="clear"></div><!-- End .clear -->
			</div>  <!-- End #tab4 -->
