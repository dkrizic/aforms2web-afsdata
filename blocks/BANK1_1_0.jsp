<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.brainment.com/taglib/xhtml" prefix="xhtml"%>
<%@taglib uri="http://www.brainment.com/taglib/validation" prefix="ui"%>
<%@taglib uri="http://www.aforms2web.com/formserver" prefix="fs"%>
<%@taglib uri="http://www.aformsolution.com/errors" prefix="err"%>
<%@taglib prefix="nav" tagdir="/WEB-INF/tags/navigation" %>
	<!-- Block BANK1_V1_0 Start -->
	<fieldset>
	  <legend class="skip"><fs:blocklabel noAnchor="true" renderMinMaxSpan="false"/></legend>
		<div class="block">dsfsdfsdfsdfsdfs
			<div class="block_container clearfix">
				<%-- Block Header Start --%>test
				<fs:ifnotrepeatedblock>
					<div class="block_header">
						<div class="block_header_container">
							<div class="block_header_headline">
								<div class="block_header_headline_container">
									<h2>
										<fs:blocklabel />
										<fs:ifBlockHelplinkExists><c:if test="${!sessionScope.useOldRightBlockHeaderInfoInsteadOfNewLeft}">
											<span class="block_header_info_container">
												<fs:blockhelplink styleclass="blockinfo_link">i</fs:blockhelplink>
											</span>
										</c:if></fs:ifBlockHelplinkExists>
									</h2>
									<div class="block_header_info">					
										<fs:ifBlockHelplinkExists><c:if test="${sessionScope.useOldRightBlockHeaderInfoInsteadOfNewLeft}">
											<div class="block_header_info_container">
												<fs:blockhelplink styleclass="blockinfo_link">i</fs:blockhelplink>
											</div>test
										</c:if></fs:ifBlockHelplinkExists>
										<fs:ifShowMinMax>
											<div class="block_header_minmax_container">
												<fs:showMinMax styleclass="blockinfo_link"></fs:showMinMax>
											</div>
										</fs:ifShowMinMax>
									</div>
								</div>
							</div>test
						</div>
					</div>test
				</fs:ifnotrepeatedblock>
				<%-- Block Header End --%>
				<!-- Block Body Start -->
				<!--  div class="block_content"-->
				<fs:blockContent>
				   	<div class="block_content_container clearfix"> 
						<!--Block Body Start -->
						<!-- Block Row Start -->
						<div class="block_content_row">
						   	<div class="block_content_row_container clearfix">	test				
								<!--Block Row Start -->
								<!-- Block Cell KONTONUMMER Start -->
								<div class="cell" style="width: 49.999%;">testtest
									<div class="cell_container">	
										<!-- Block Cell Start -->
										<%-- Block Cell Content Start--%>
										<%-- Field Content KONTONUMMER Start --%>
										<div class="subcolumns">	
											<%-- Field Label Cell Start --%>
											<div class="cxl" style="width: 33.9987%;" >
											    <div class="subcx fieldlabel_cell" >
													<%-- Field Label Impl Cell Start --%>
														<fs:label addStatusImages="true" for="KONTONUMMER" styleclass="fieldlabel" title="Kontonummer">Kontonummer</fs:label>
													<%-- Field Label Impl Cell End --%>
											    </div>
											</div>
											<%-- Field Label Cell End --%>
											<%-- Field Info Cell Start --%>
											<div class="cxl" style="width: 6.0001%;">
											    <div class="subcx fieldinfo_cell">
											    	<c:choose><c:when test="${!empty sessionScope.useNewStyle}">
											   		</c:when><c:otherwise>
											    	<div class="c50l">
											    		<div class="subcx">test
											    			<div class="fieldinfo_cell_container_info">
												   				<fs:fieldinfo styleclass="fieldinfo_info" for="testtesttesttesttesttesttesttesttesttestt"/>
											    			</div>
											    		</div>
											      </div>
											    	<div class="c50r">
											    		<div class="subcx">
												    		<div class="fieldinfo_cell_container_help">
													    		<fs:fieldhelplink styleclass="fieldinfo_helplink" for="KONTONUMMER">i</fs:fieldhelplink>&nbsp;
												    		</div>
											    		</div>
											      </div>
											   		</c:otherwise></c:choose>
												</div>
											</div>
											<%-- Field Info Cell End --%>
											<%-- Field Control Cell Start --%>
											<div class="cxl" style="width: 60.0012%;">
												<div class="subcx fieldinput_cell">
													<c:if test="${empty sessionScope.useNewStyle}">
														<%-- Text Control Start --%>

															<ui:text 
																id="KONTONUMMER" 
																name="KONTONUMMER" 
														styleclass="standard" 
														title="Kontonummer" 
														size="15"/>
														<%-- Text Control End --%>
													</c:if>
													<c:if test="${!empty sessionScope.useNewStyle}">
															<div class="fieldinput_cell_input">
																<%-- Text Control Start --%>

																	<ui:text 
																		id="KONTONUMMER" 
																		name="KONTONUMMER" 
																styleclass="standard" 
																title="Kontonummer" 
																size="15"/>
																<%-- Text Control End --%>
															</div>
																<div class="fieldinput_cell_help">
																  	<span class="fieldinfo_cell_container_infoNeu">
																  	  <fs:fieldhelplink styleclass="fieldinfo_helplink" for="KONTONUMMER">i</fs:fieldhelplink>&nbsp;
																  	</span>	
																</div>
													</c:if>
											  </div>
											</div>  	
											<%-- Field Control Cell End --%>
										</div>
										<%-- Field Content KONTONUMMER End --%>
										<%-- Block Cell Content End--%>
										<!--Block Cell End -->
								  	</div>
								</div>
								<!-- Block Cell KONTONUMMER End --><!-- Block Cell KONTOINHABERIN Start -->
								<div class="cell" style="width: 49.999%;">
									<div class="cell_container">	
										<!-- Block Cell Start -->
										<%-- Block Cell Content Start--%>
										<%-- Field Content KONTOINHABERIN Start --%>
										<div class="subcolumns">	
											<%-- Field Label Cell Start --%>
											<div class="cxl" style="width: 33.9987%;" >
											    <div class="subcx fieldlabel_cell" >
													<%-- Field Label Impl Cell Start --%>
														<fs:label addStatusImages="true" for="KONTOINHABERIN" styleclass="fieldlabel" title="KontoinhaberIn">KontoinhaberIn</fs:label>
													<%-- Field Label Impl Cell End --%>
											    </div>
											</div>
											<%-- Field Label Cell End --%>
											<%-- Field Info Cell Start --%>
											<div class="cxl" style="width: 6.0001%;">
											    <div class="subcx fieldinfo_cell">
											    	<c:choose><c:when test="${!empty sessionScope.useNewStyle}">
											   		</c:when><c:otherwise>
											    	<div class="c50l">
											    		<div class="subcx">
											    			<div class="fieldinfo_cell_container_info">
												   				<fs:fieldinfo styleclass="fieldinfo_info" for="KONTOINHABERIN"/>
											    			</div>
											    		</div>
											      </div>
											    	<div class="c50r">
											    		<div class="subcx">
												    		<div class="fieldinfo_cell_container_help">
													    		<fs:fieldhelplink styleclass="fieldinfo_helplink" for="KONTOINHABERIN">i</fs:fieldhelplink>&nbsp;
												    		</div>
											    		</div>
											      </div>
											   		</c:otherwise></c:choose>
												</div>
											</div>
											<%-- Field Info Cell End --%>
											<%-- Field Control Cell Start --%>
											<div class="cxl" style="width: 60.0012%;">
												<div class="subcx fieldinput_cell">
													<c:if test="${empty sessionScope.useNewStyle}">
														<%-- Text Control Start --%>

															<ui:text 
																id="KONTOINHABERIN" 
																name="KONTOINHABERIN" 
														styleclass="standard" 
														title="KontoinhaberIn" 
														size="35"/>
														<%-- Text Control End --%>
													</c:if>
													<c:if test="${!empty sessionScope.useNewStyle}">
															<div class="fieldinput_cell_input">
																<%-- Text Control Start --%>

																	<ui:text 
																		id="KONTOINHABERIN" 
																		name="KONTOINHABERIN" 
																styleclass="standard" 
																title="KontoinhaberIn" 
																size="35"/>
																<%-- Text Control End --%>
															</div>
																<div class="fieldinput_cell_help">
																  	<span class="fieldinfo_cell_container_infoNeu">
																  	  <fs:fieldhelplink styleclass="fieldinfo_helplink" for="KONTOINHABERIN">i</fs:fieldhelplink>&nbsp;
																  	</span>	
																</div>
													</c:if>
											  </div>
											</div>  	
											<%-- Field Control Cell End --%>
										</div>
										<%-- Field Content KONTOINHABERIN End --%>
										<%-- Block Cell Content End--%>
										<!--Block Cell End -->
								  	</div>
								</div>
								<!-- Block Cell KONTOINHABERIN End -->
								<!--Block Row End -->
							</div>
						</div>
						<!-- Block Row End --><!-- Block Row Start -->
						<div class="block_content_row">
						   	<div class="block_content_row_container clearfix">					
								<!--Block Row Start -->
								<!-- Block Cell BANKLEITZAHL Start -->
								<div class="cell" style="width: 49.999%;">
									<div class="cell_container">	
										<!-- Block Cell Start -->
										<%-- Block Cell Content Start--%>
										<%-- Field Content BANKLEITZAHL Start --%>
										<div class="subcolumns">	
											<%-- Field Label Cell Start --%>
											<div class="cxl" style="width: 33.9987%;" >
											    <div class="subcx fieldlabel_cell" >
													<%-- Field Label Impl Cell Start --%>
														<fs:label addStatusImages="true" for="BANKLEITZAHL" styleclass="fieldlabel" title="Bankleitzahl">Bankleitzahl</fs:label>
													<%-- Field Label Impl Cell End --%>
											    </div>
											</div>
											<%-- Field Label Cell End --%>
											<%-- Field Info Cell Start --%>
											<div class="cxl" style="width: 6.0001%;">
											    <div class="subcx fieldinfo_cell">
											    	<c:choose><c:when test="${!empty sessionScope.useNewStyle}">
											   		</c:when><c:otherwise>
											    	<div class="c50l">
											    		<div class="subcx">
											    			<div class="fieldinfo_cell_container_info">
												   				<fs:fieldinfo styleclass="fieldinfo_info" for="BANKLEITZAHL"/>
											    			</div>
											    		</div>
											      </div>
											    	<div class="c50r">
											    		<div class="subcx">
												    		<div class="fieldinfo_cell_container_help">
													    		<fs:fieldhelplink styleclass="fieldinfo_helplink" for="BANKLEITZAHL">i</fs:fieldhelplink>&nbsp;
												    		</div>
											    		</div>
											      </div>
											   		</c:otherwise></c:choose>
												</div>
											</div>
											<%-- Field Info Cell End --%>
											<%-- Field Control Cell Start --%>
											<div class="cxl" style="width: 60.0012%;">
												<div class="subcx fieldinput_cell">
													<c:if test="${empty sessionScope.useNewStyle}">
														<%-- Text Control Start --%>

															<ui:text 
																id="BANKLEITZAHL" 
																name="BANKLEITZAHL" 
														styleclass="standard" 
														title="Bankleitzahl" 
														size="15"/>
														<%-- Text Control End --%>
													</c:if>
													<c:if test="${!empty sessionScope.useNewStyle}">
															<div class="fieldinput_cell_input">
																<%-- Text Control Start --%>

																	<ui:text 
																		id="BANKLEITZAHL" 
																		name="BANKLEITZAHL" 
																styleclass="standard" 
																title="Bankleitzahl" 
																size="15"/>
																<%-- Text Control End --%>
															</div>
																<div class="fieldinput_cell_help">
																  	<span class="fieldinfo_cell_container_infoNeu">
																  	  <fs:fieldhelplink styleclass="fieldinfo_helplink" for="BANKLEITZAHL">i</fs:fieldhelplink>&nbsp;
																  	</span>	
																</div>
													</c:if>
											  </div>
											</div>  	
											<%-- Field Control Cell End --%>
										</div>
										<%-- Field Content BANKLEITZAHL End --%>
										<%-- Block Cell Content End--%>
										<!--Block Cell End -->
								  	</div>
								</div>
								<!-- Block Cell BANKLEITZAHL End --><!-- Block Cell BANKINSTITUT Start -->
								<div class="cell" style="width: 49.999%;">
									<div class="cell_container">	
										<!-- Block Cell Start -->
										<%-- Block Cell Content Start--%>
										<%-- Field Content BANKINSTITUT Start --%>
										<div class="subcolumns">	
											<%-- Field Label Cell Start --%>
											<div class="cxl" style="width: 33.9987%;" >
											    <div class="subcx fieldlabel_cell" >
													<%-- Field Label Impl Cell Start --%>
														<fs:label addStatusImages="true" for="BANKINSTITUT" styleclass="fieldlabel" title="Bankinstitut">Bankinstitut</fs:label>
													<%-- Field Label Impl Cell End --%>
											    </div>
											</div>
											<%-- Field Label Cell End --%>
											<%-- Field Info Cell Start --%>
											<div class="cxl" style="width: 6.0001%;">
											    <div class="subcx fieldinfo_cell">
											    	<c:choose><c:when test="${!empty sessionScope.useNewStyle}">
											   		</c:when><c:otherwise>
											    	<div class="c50l">
											    		<div class="subcx">
											    			<div class="fieldinfo_cell_container_info">
												   				<fs:fieldinfo styleclass="fieldinfo_info" for="BANKINSTITUT"/>
											    			</div>
											    		</div>
											      </div>
											    	<div class="c50r">
											    		<div class="subcx">
												    		<div class="fieldinfo_cell_container_help">
													    		<fs:fieldhelplink styleclass="fieldinfo_helplink" for="BANKINSTITUT">i</fs:fieldhelplink>&nbsp;
												    		</div>
											    		</div>
											      </div>
											   		</c:otherwise></c:choose>
												</div>
											</div>
											<%-- Field Info Cell End --%>
											<%-- Field Control Cell Start --%>
											<div class="cxl" style="width: 60.0012%;">
												<div class="subcx fieldinput_cell">
													<c:if test="${empty sessionScope.useNewStyle}">
														<%-- Text Control Start --%>

															<ui:text 
																id="BANKINSTITUT" 
																name="BANKINSTITUT" 
														styleclass="standard" 
														title="Bankinstitut" 
														size="30"/>
														<%-- Text Control End --%>
													</c:if>
													<c:if test="${!empty sessionScope.useNewStyle}">
															<div class="fieldinput_cell_input">
																<%-- Text Control Start --%>

																	<ui:text 
																		id="BANKINSTITUT" 
																		name="BANKINSTITUT" 
																styleclass="standard" 
																title="Bankinstitut" 
																size="30"/>
																<%-- Text Control End --%>
															</div>
																<div class="fieldinput_cell_help">
																  	<span class="fieldinfo_cell_container_infoNeu">
																  	  <fs:fieldhelplink styleclass="fieldinfo_helplink" for="BANKINSTITUT">i</fs:fieldhelplink>&nbsp;
																  	</span>	
																</div>
													</c:if>
											  </div>
											</div>  	
											<%-- Field Control Cell End --%>
										</div>
										<%-- Field Content BANKINSTITUT End --%>
										<%-- Block Cell Content End--%>
										<!--Block Cell End -->
								  	</div>
								</div>
								<!-- Block Cell BANKINSTITUT End -->
								<!--Block Row End -->
							</div>
						</div>
						<!-- Block Row End -->
						<%-- Block Body End Start --%>
						<fs:ifrepeatableblock masterdetail='false'>
						<div class="block_content_end">
						   	<div class="block_content_container_end clearfix">
								<jsp:include page='/product/repeatable_block_actions.jsp' flush='true'/>
							</div>
						</div>	
						</fs:ifrepeatableblock>
						<%-- Block Body End End --%>
					</div>
				</fs:blockContent>
				<!-- Block Body End -->
			</div>
		</div>
	</fieldset>
	<!-- Block BANK1_V1_0 End --><!-- Block End -->