<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header">
    <div id="top">
        <div class="left navigation" id="main-nav">
            <ul class="tabbed">
                <li class="current-tab"><a href="<c:url value="/"/>">Spring SAML Mock application</a></li>
            </ul>
            <div class="clearer">&nbsp;</div>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
    <div class="navigation" id="sub-nav">
        <ul class="tabbed">
            <li<c:if test="${tab != 'metadata'}"> class="current-tab"</c:if>><a href="<c:url value="/saml/login"/>">SAML Login</a></li>
            <li<c:if test="${tab == 'metadata'}"> class="current-tab"</c:if>><a href="<c:url value="/saml/web/metadata"/>">Metadata Administration</a></li>
            <li><a href="<%=request.getContextPath()%>/seller">Seller Page</a></li>
            <li><a href="<%=request.getContextPath()%>/buyer">Buyer Page</a></li>
        </ul>
        <div class="clearer">&nbsp;</div>
    </div>
</div>