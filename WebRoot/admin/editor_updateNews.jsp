<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="tab-content" id="tab5">
					
						<form action="servlet/UpdateServlet" method="post">
							
							<fieldset>
								<p>
									<label>新闻标题</label>
									<input class="text-input medium-input datepicker" type="text" id="addTitle" name="title" value="${news.title}" />
								</p>
								
								<p>
									<label>作者</label>
										<input class="text-input small-input" type="text" id="addAuthor" name="author" value="${news.author }"/>
								</p>
								
								<p>
									<label>新闻类别</label>              
									<select name="type" class="small-input" id="addType">
										<option>今日焦点</option>
										<option>国内新闻</option>
										<option>国际新闻</option>
										<option>体育	</option>
										<option>军事	</option>
										<option>教育	</option>
										<option>娱乐	</option>
										<option>社会</option>
										<option selected="selected">
											${type}
										</option>
									</select> 
								</p>
								
								<p>
									<label>内容</label>
									<textarea class="text-input textarea wysiwyg" id="addContent" name="content" cols="79" rows="15">${news.content}</textarea>
								</p>
								
								<p>
									<input class="button" type="button" value="提交" onclick="addNews()"/>
									<input class="button" type="reset" value="重置"/>
								</p>
								
							</fieldset>
							
							<div class="clear"></div><!-- End .clear -->
							
						</form>
						
					</div> <!-- End #tab5 -->   