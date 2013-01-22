<p id="notice"><%%= notice %></p>
<% for attribute in attributes %>
**<%= attribute.human_name %>:** <%%= @<%= singular_table_name %>.<%= attribute.name %> %>
<% end %>

<%%= link_to 'Edit', edit_<%= singular_table_name %>_path(@<%= singular_table_name %>) %> |
<%%= link_to 'Back', <%= index_helper%>_path %>
