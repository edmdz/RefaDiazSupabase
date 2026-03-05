const { main } = require("./upload-to-storage");

main("remote").catch((error) => {
  console.error(error.message);
  process.exit(1);
});
