<%%= form_for(@<%= singular_table_name %>) do |f| %>
  <%% if @<%= singular_table_name %>.errors.any? %>
    <div id="error_explanation">
      ## <%%= pluralize(@<%= singular_table_name %>.errors.count, "error") %> prohibited this <%= singular_table_name %> from being saved:</h2>

      <%% @<%= singular_table_name %>.errors.full_messages.each do |msg| %>
       - <li><%%= msg %></li>
      <%% end %>
    </div>
  <%% end %>

<% attributes.each do |attribute| -%>
  <div class="field">
    <%%= f.label :<%= attribute.name %> %><br />
    <%%= f.<%= attribute.field_type %> :<%= attribute.name %> %>
  </div>
<% end -%>
  <div class="actions">
    <%%= f.submit %>
  </div>
<%% end %>
