
"use strict";

let ManagerStatus = require('./ManagerStatus.js');
let GearboxStatus = require('./GearboxStatus.js');
let ManagerCommand = require('./ManagerCommand.js');
let ThrottleCommand = require('./ThrottleCommand.js');
let GearboxCommand = require('./GearboxCommand.js');
let PlcStatus = require('./PlcStatus.js');
let ThrottleStatus = require('./ThrottleStatus.js');
let PlcCommand = require('./PlcCommand.js');

module.exports = {
  ManagerStatus: ManagerStatus,
  GearboxStatus: GearboxStatus,
  ManagerCommand: ManagerCommand,
  ThrottleCommand: ThrottleCommand,
  GearboxCommand: GearboxCommand,
  PlcStatus: PlcStatus,
  ThrottleStatus: ThrottleStatus,
  PlcCommand: PlcCommand,
};
