App.cable.subscriptions.create("BidsChannel", {
  received: function(data) {
    // Main table
    $(".bids-table tbody")
    .prepend("<tr><td>" + data.product_name + "</td><td>" + data.value + "</td></tr>")

    // Product specific tables
    $(".bids-table-" + data.product_id + " tbody")
    .prepend("<tr><td>" + data.value + "</td></tr>")
  }
});
