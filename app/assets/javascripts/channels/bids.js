App.cable.subscriptions.create("BidsChannel", {
  received: function(data) {
    // Main table
    $(".bids-table tbody")
    .prepend("<tr class='warning'><td>" + data.product_name +
             "</td><td>" + data.value + "<span class='label label-info pull-right'> \
             New</span></td></tr>")

    // Product specific tables
    $(".bids-table-" + data.product_id + " tbody")
    .prepend("<tr class='warning'><td>" + data.value + " \
             <span class='label label-info pull-right'>New</span></td></tr>")
  }
});
