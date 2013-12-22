<%@ include file="/WEB-INF/sitemesh/common/taglib.jsp"%>
<table>
    <tr>
        <td><div class='<%= "Home".equalsIgnoreCase( (String)request.getAttribute("currentTopNavMenu") ) ? "active" : "" %>'><a href="index.jsp">Home</a></div></td>
        <td><div class='<%= "Inventory".equalsIgnoreCase( (String)request.getAttribute("currentTopNavMenu") ) ? "active" : "" %>'><a href="inventory.jsp">Inventory</a></div></td>
        <td><div class='<%= "Sales".equalsIgnoreCase( (String)request.getAttribute("currentTopNavMenu") ) ? "active" : "" %>'><a href="sales.jsp">Sales</a></div></td>
        <td><div class='<%= "Tickets".equalsIgnoreCase( (String)request.getAttribute("currentTopNavMenu") ) ? "active" : "" %>'><a href="tickets.jsp">Tickets</a></div></td>
    </tr>
</table>

