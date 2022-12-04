const fs = require("fs");
const meminfo = fs.readFileSync("/proc/meminfo", { encoding: "utf8" });
const iomem = fs.readFileSync("/proc/iomem", { encoding: "utf8" });
const uptime = fs.readFileSync("/proc/uptime", { encoding: "utf8" });
const partitions = fs.readFileSync("/proc/partitions", { encoding: "utf8" });
const diskStats = fs.readFileSync("/proc/diskstats", { encoding: "utf8" });
const cpuinfo = fs.readFileSync("/proc/cpuinfo", { encoding: "utf8" });
const ChildProcess = require("child_process");

const getProcess = () => {
  ChildProcess.exec("chmod +x ./meminfo.sh");
  ChildProcess.exec("./meminfo.sh", (error, stdout, stderr) => {
    if (error) {
      throw error;
    }
    if (stderr) {
      throw stderr;
    }
    const out = JSON.parse(stdout);
    console.log(out);
  });
};

getProcess();
