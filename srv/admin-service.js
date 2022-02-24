const cds = require("@sap/cds");

module.exports = cds.service.impl(function () {
  this.before("*", "Foo", async (req) => {
    console.log("- - - - - - - - USER INFROMATION - - - - - - - -");
    console.log(req.user);
  });
});
