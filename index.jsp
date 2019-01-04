<html>
<body>
	<h2>Hello World!</h2>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {

			$('#wish').click(function(e) {
				var name = $("#name").val();

				// GET
				$.ajax({
					type : "GET",
					url : window.location + "welcome",
					data : 'name=' + name,
					success : function(result) {
						$("#resultDiv").html(result);
					},
					error : function(e) {
						$("#resultDiv").html("<strong>Error</strong>");
					}
				});

			});
		})
	</script>

	<form action="welcome">

		Enter Name : <input type="text" name="name" id="name" /> <input type="button" value="Wish" id="wish" />

	</form>

	<hr />

	<div id="resultDiv"></div>


</body>
</html>
