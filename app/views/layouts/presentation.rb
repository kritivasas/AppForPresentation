<!DOCTYPE html>
<html>
<head>
  <title>AppForPresentation</title>
  <%= stylesheet_link_tag    "application_temp" %>
  <%= javascript_include_tag "application" %>
  <%#= javascript_include_tag "application-884572fca56bfc7fa144afebd01a49b8" %> 
  <%= csrf_meta_tags %>
</head>
<body>

<%= yield %>

</body>
</html>
