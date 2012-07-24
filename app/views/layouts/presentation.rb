<!DOCTYPE html>
<html>
<head>
  <title>AppForPresentation</title>
  <%= stylesheet_link_tag    "application_temp" %>
  <%= javascript_include_tag "application" %>
  <%= javascript_include_tag "rest_in_place" %>
  <%= csrf_meta_tags %>
  <script type="javascript">
  </script>

</head>
<body>

<%= yield %>

</body>
</html>
