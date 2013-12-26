<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="tab-content" id="tab5">
					
						<form action="servlet/UpdateServlet" method="post">
							
							<fieldset>
								<p>
									<label>���ű���</label>
									<input class="text-input medium-input datepicker" type="text" id="addTitle" name="title" value="${news.title}" />
								</p>
								
								<p>
									<label>����</label>
										<input class="text-input small-input" type="text" id="addAuthor" name="author" value="${news.author }"/>
								</p>
								
								<p>
									<label>�������</label>              
									<select name="type" class="small-input" id="addType">
										<option>���ս���</option>
										<option>��������</option>
										<option>��������</option>
										<option>����	</option>
										<option>����	</option>
										<option>����	</option>
										<option>����	</option>
										<option>���</option>
										<option selected="selected">
											${type}
										</option>
									</select> 
								</p>
								
								<p>
									<label>����</label>
									<textarea class="text-input textarea wysiwyg" id="addContent" name="content" cols="79" rows="15">${news.content}</textarea>
								</p>
								
								<p>
									<input class="button" type="button" value="�ύ" onclick="addNews()"/>
									<input class="button" type="reset" value="����"/>
								</p>
								
							</fieldset>
							
							<div class="clear"></div><!-- End .clear -->
							
						</form>
						
					</div> <!-- End #tab5 -->   