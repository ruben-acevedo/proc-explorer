const fs = require("fs");

const getProcessStatus = (pid, callback) => {
  let status = fs.readFileSync(`/proc/${pid}/status`, "utf8");
  let obj = {};
  status = status.split("\n");
  status.forEach((line) => {
    line = line.split(":");
    if (line.length === 2) {
      line[1] = line[1].replace("\t", " ");
      obj[line[0]] = line[1].trim().split(" ", 1)[0];
    }
  });
  callback(obj);
};

const getMemInfo = (callback) => {
  let meminfo = fs.readFileSync("/proc/meminfo", "utf8").split("\n");
  let obj = {};

  meminfo.forEach((line) => {
    line = line.split(":");
    if (line.length === 2) {
      obj[line[0]] = line[1].trim().split(" ", 1)[0];
    }
  });
  callback(obj);
};

const getUptime = (callback) => {
  let uptime = fs.readFileSync("/proc/uptime", { encoding: "utf8" }).split(" ");
  uptime[1] = uptime[1].trim();
  callback({
    sysUptime: parseFloat(uptime[0]),
    idleProcess: parseFloat(uptime[1]),
  });
};

module.exports = { getMemInfo, getUptime, getProcessStatus };
