$(document).ready(
		function() {
			var year;
			var month;
			var day = [ "31", "28", "31", "30", "31", "30", "31", "31", "30",
					"31", "30", "31" ];
			var days;
			$("#year").on("change", function() {
				if (month == undefined) {
					year = $(this).val();
				} else {
					year = $(this).val();
					if (0 == year % 4 && 0 != year % 100 || 0 == year % 400) {
						day[1] = "29";
						$('#day').empty();
						for (var count = 1; count <= day[month - 1]; count++) {
							var option = $("<option>" + count + "</option>");
							$("#day").append(option);
						}
					} else {
						day[1] = "28";
						$('#day').empty();
						for (var count = 1; count <= day[month - 1]; count++) {
							var option = $("<option>" + count + "</option>");
							$("#day").append(option);
						}
					}
				}

			});

			$("#month").on("change", function() {
				if (year == undefined) {
					month = $(this).val();
				} else {
					month = $(this).val();
					if (0 == year % 4 && 0 != year % 100 || 0 == year % 400) {
						day[1] = "29";
						$('#day').empty();

						for (var count = 1; count <= day[month - 1]; count++) {
							var option = $("<option>" + count + "</option>");
							$("#day").append(option);
						}
					} else {
						day[1] = "28";
						$('#day').empty();

						for (var count = 1; count <= day[month - 1]; count++) {
							var option = $("<option>" + count + "</option>");
							$("#day").append(option);
						}
					}
				}

			});

		});