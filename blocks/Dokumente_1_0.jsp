<%-- Block Init Start --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.brainment.com/taglib/xhtml" prefix="xhtml"%>
<%@taglib uri="http://www.brainment.com/taglib/validation" prefix="ui"%>
<%@taglib uri="http://www.aforms2web.com/formserver" prefix="fs"%>
<%@taglib uri="http://www.aformsolution.com/errors" prefix="err"%>
<%@taglib prefix="nav" tagdir="/WEB-INF/tags/navigation" %>
<%-- Block Init End --%>
	<%-- Block Dokumente_V1_0 Start [ --%>
	<xhtml:block>
		<fieldset>
			  <legend class="skiplegend">
			  	<fs:blocklabel renderHtmlHeader="false"  />
			  </legend>
			  <div class="legend">
			  	<fs:blocklabel renderHtmlHeader="true" noAnchor="true" />
			  	<fs:ifBlockHelplinkExists>
			  		<div class="info"><fs:blockhelplink styleclass="infoI">i</fs:blockhelplink></div>
			  	</fs:ifBlockHelplinkExists>
			  	<fs:ifShowMinMax>
					<span class="block_header_minmax_container">
						<fs:showMinMax styleclass="block_header_minmax_link"></fs:showMinMax>
					</span>
				</fs:ifShowMinMax>
			  </div>
		  <%-- Block Body Start [ --%>
		  <fs:blockContent>
		  	<fs:ifrepeatableblock masterdetail='false'>
		  		<jsp:useBean id="parentform" type="com.brainment.webfaces.validation.RepeatableForm" scope="request"/>
		  		<jsp:useBean id="subform" type="com.brainment.webfaces.validation.Form" scope="request"/>
		  		<c:if test="${parentform.userRepetitionHeaderText}">
		  			<%
		  				int row = parentform.getIndexOfSet(subform);
		  				pageContext.setAttribute("row", new Integer(row));
		  			%>
		  			<c:if test="${!parentform.userRepetitionHeaderStyle}">
		  				<div class="repetitionHeader">
		  					<c:if test="${!parentform.blockGroupMergeWithPrevious}">
		  						<h4><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h4>
		  					</c:if>
		  					<c:if test="${parentform.blockGroupMergeWithPrevious}">
		  						<h5><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h5>
		  					</c:if>
		  				</div>
		  			</c:if>
		  			<c:if test="${parentform.userRepetitionHeaderStyle}">
		  				<div class="repetitionHeader <c:out value="${parentform.repetitionHeaderStyle}" />">
		  					<c:if test="${!parentform.blockGroupMergeWithPrevious}">
		  						<h4><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h4>
		  					</c:if>
		  					<c:if test="${parentform.blockGroupMergeWithPrevious}">
		  						<h5><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h5>
		  					</c:if>
		  				</div>
		  			</c:if>
		  		</c:if>
		  	</fs:ifrepeatableblock>
		  	<ui:blockContentRowDiv fieldsInRow="lichtbildausweis" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="lichtbildausweis" name="lichtbildausweis" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_advancedFile" >
		  			<%-- Field Content lichtbildausweis Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="lichtbildausweis" title="Kopie vom Lichtbildausweis hochladen">Lichtbildausweis</fs:label>
		  						<fs:ifFieldHelplinkExists for="lichtbildausweis" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="lichtbildausweis">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- stg30/advancedFile.st / Advanced File Control Start --%>
		  							<div class="field_file_cell">
		  								<fs:ifFileUploaded name="lichtbildausweis" >
		  									<div class="field_filelabel_container">
		  										<fs:filename
		  											name="lichtbildausweis" 
		  							styleclass="standard_file" 
		  							title="Kopie vom Lichtbildausweis hochladen" addShyEntities="true"/>
		  									</div>
		  								</fs:ifFileUploaded>
		  								<div class="field_filechooser_container">
		  									<fs:ifnavhelp>
		  										<fs:filechooserhelper renderOnAdd="true" id="lichtbildausweis" name="lichtbildausweis" >
		  											<fs:message messagekey="attachment.button.add" var="button_addAttach" />
		  											<c:set var="nav_addAttach_helplink">
		  												<fs:message messagekey='help.function.NavigationHelpHeadline' />&nbsp;&quot;${button_addAttach }&quot;
		  											</c:set>
		  											<c:set var="nav_addAttach_helptitle">
		  												<fs:message messagekey='help.tooltip.text.navigation' args="${button_addAttach }" />
		  											</c:set>
		  											<fs:helplink url="/afs/html/help/attachment_hinzufuegen.html"
		  												headline="${nav_addAttach_helplink}" rel="1" title="${nav_addAttach_helptitle}"
		  												styleclass="fieldinfo_2_help_link">i</fs:helplink>&nbsp;
		  										</fs:filechooserhelper>
		  										<fs:filechooserhelper renderOnRemove="true" id="lichtbildausweis" name="lichtbildausweis" >
		  											<fs:message messagekey="attachment.button.remove" var="button_removeAttach" />
		  											<c:set var="nav_removeAttach_helplink">
		  												<fs:message messagekey='help.function.NavigationHelpHeadline' />&nbsp;&quot;${button_removeAttach }&quot;
		  											</c:set>
		  											<c:set var="nav_removeAttach_helptitle">
		  												<fs:message messagekey='help.tooltip.text.navigation' args="${button_removeAttach }" />
		  											</c:set>
		  											<fs:helplink url="/afs/html/help/attachment_entfernen.html"
		  												headline="${nav_removeAttach_helplink}" rel="1" title="${nav_removeAttach_helptitle}"
		  												styleclass="fieldinfo_2_help_link">i</fs:helplink>&nbsp;
		  										</fs:filechooserhelper>
		  									</fs:ifnavhelp>
		  									<fs:ifFileUploaded name="lichtbildausweis" >
		  										<fs:filechooser
		  											id="lichtbildausweis" 
		  											novalidation="true" 
		  							styleclass="standard_file_button"
		  											name="lichtbildausweis" 
		  											event="manageUpload"
		  											onclick="setFormTargetAnchor(this, 'fileUpload'); if (handleAjaxFileRemove(this, 'input:file', event)) { return false; };"
		  											disablejs="false" renderAsButton="true" /><%-- delete button --%>
		  									</fs:ifFileUploaded>
		  									<fs:ifFileUploaded name="lichtbildausweis" invert="true" >
		  										<fs:filechooser
		  											id="lichtbildausweis" 
		  											novalidation="true" 
		  							styleclass="standard_file_button"
		  											name="lichtbildausweis" 
		  											event="manageUpload"
		  											onclick="if (handleAjaxFileUpload(this, 'input:file', event)) { return false; };"
		  											disablejs="false" renderAsButton="true" /><%-- file upload --%>
		  									</fs:ifFileUploaded>
		  								</div>
		  							</div>
		  							<fs:uploadedfileimage
		  								id="lichtbildausweis"
		  								name="lichtbildausweis"
		  								/>
		  							<fs:filechooser
		  								id="lichtbildausweis" 	
		  								novalidation="true" 
		  							styleclass="standard_file_button hidden"
		  								name="lichtbildausweis" 
		  								event="manageUpload"
		  								onclick="setFormTargetAnchor(this, 'fileUpload');"
		  								disablejs="false"		
		  								/>
		  							<%-- Advanced File Control End --%>
		  						<fs:ifFieldHelplinkExists for="lichtbildausweis" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="lichtbildausweis">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="lichtbildausweis" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="lichtbildausweis" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="lichtbildausweis" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="lichtbildausweis">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="lichtbildausweis" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="lichtbildausweis" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content lichtbildausweis End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv>
		  	<fs:ifrepeatableblock masterdetail='false'>
		  	<div class="block_content_end">
		  	   	<div class="block_content_container_end clearfix">
		  			<jsp:include page='/stg3/repeatable_block_actions.jsp' flush='true'/>
		  		</div>
		  	</div>	
		  	</fs:ifrepeatableblock>
		  </fs:blockContent>
		  <%-- ] Block Body End --%>
		  
		</fieldset>
	</xhtml:block>
	<%-- ] Block Dokumente_V1_0 End --%>