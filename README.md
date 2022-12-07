# Proc-explorer

### Easy-to-use /proc/ folder explorer and JSON parser.

#### For the moment it maps:

- /proc/meminfo
- /proc/{pid}/status
- /proc/uptime
- /proc/cpuinfo

### Installation:

```
npm i proc-explorer

```

### Usage:

```
const proc = require("proc-explorer")
```

#### Functions:

##### meminfo(callback)

```
proc.meminfo((object) => console.log(object))
```

##### response:

```
{
  MemTotal: '32790944',
  MemFree: '26303564',
  MemAvailable: '28575356',
  Buffers: '135184',
  Cached: '2472280',
  SwapCached: '0',
  Active: '968636',
  Inactive: '4468268',
  'Active(anon)': '11856',
  'Inactive(anon)': '2972396',
  'Active(file)': '956780',
  'Inactive(file)': '1495872',
  Unevictable: '64',
  Mlocked: '64',
  SwapTotal: '2097148',
  SwapFree: '2097148',
  Dirty: '876',
  Writeback: '0',
  AnonPages: '2829396',
  Mapped: '1184988',
  Shmem: '163404',
  KReclaimable: '284328',
  Slab: '545944',
  SReclaimable: '284328',
  SUnreclaim: '261616',
  KernelStack: '18200',
  PageTables: '49848',
  NFS_Unstable: '0',
  Bounce: '0',
  WritebackTmp: '0',
  CommitLimit: '18492620',
  Committed_AS: '13045444',
  VmallocTotal: '34359738367',
  VmallocUsed: '105244',
  VmallocChunk: '0',
  Percpu: '44032',
  HardwareCorrupted: '0',
  AnonHugePages: '0',
  ShmemHugePages: '0',
  ShmemPmdMapped: '0',
  FileHugePages: '0',
  FilePmdMapped: '0',
  HugePages_Total: '0',
  HugePages_Free: '0',
  HugePages_Rsvd: '0',
  HugePages_Surp: '0',
  Hugepagesize: '2048',
  Hugetlb: '0',
  DirectMap4k: '819132',
  DirectMap2M: '9588736',
  DirectMap1G: '23068672'
}
```

##### status(pid, callback)

```
proc.status(1,(object) => console.log(object))
```

##### response:

```
{
  Name: 'systemd',
  Umask: '0000',
  State: 'S',
  Tgid: '1',
  Ngid: '0',
  Pid: '1',
  PPid: '0',
  TracerPid: '0',
  Uid: '0\t0\t0\t0',
  Gid: '0\t0\t0\t0',
  FDSize: '256',
  Groups: '',
  NStgid: '1',
  NSpid: '1',
  NSpgid: '1',
  NSsid: '1',
  VmPeak: '232608',
  VmSize: '167216',
  VmLck: '0',
  VmPin: '0',
  VmHWM: '12084',
  VmRSS: '12084',
  RssAnon: '4104',
  RssFile: '7980',
  RssShmem: '0',
  VmData: '20348',
  VmStk: '132',
  VmExe: '896',
  VmLib: '9048',
  VmPTE: '84',
  VmSwap: '0',
  HugetlbPages: '0',
  CoreDumping: '0',
  THP_enabled: '1',
  Threads: '1',
  SigQ: '0/127813',
  SigPnd: '0000000000000000',
  ShdPnd: '0000000000000000',
  SigBlk: '7be3c0fe28014a03',
  SigIgn: '0000000000001000',
  SigCgt: '00000001000004ec',
  CapInh: '0000000000000000',
  CapPrm: '000001ffffffffff',
  CapEff: '000001ffffffffff',
  CapBnd: '000001ffffffffff',
  CapAmb: '0000000000000000',
  NoNewPrivs: '0',
  Seccomp: '0',
  Seccomp_filters: '0',
  Speculation_Store_Bypass: 'thread',
  SpeculationIndirectBranch: 'conditional',
  Cpus_allowed: '0000ffff',
  Cpus_allowed_list: '0-15',
  Mems_allowed: '00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000001',
  Mems_allowed_list: '0',
  voluntary_ctxt_switches: '5956',
  nonvoluntary_ctxt_switches: '201'
}
```

##### cpuinfo(callback)

```
proc.cpuinfo((object) => console.log(object))
```

##### response:

```
{
  processor: ' 15',
  vendor_id: ' AuthenticAMD',
  cpu_family: ' 25',
  model: ' 33',
  model_name: ' AMD Ryzen 7 5800X 8-Core Processor',
  stepping: ' 0',
  microcode: ' 0xa201006',
  cpu_MHz: ' 3800.000',
  cache_size: ' 512 KB',
  physical_id: ' 0',
  siblings: ' 16',
  core_id: ' 7',
  cpu_cores: ' 8',
  apicid: ' 15',
  initial_apicid: ' 15',
  fpu: ' yes',
  fpu_exception: ' yes',
  cpuid_level: ' 16',
  wp: ' yes',
  flags: ' fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good nopl nonstop_tsc cpuid extd_apicid aperfmperf rapl pni pclmulqdq monitor ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt tce topoext perfctr_core perfctr_nb bpext perfctr_llc mwaitx cpb cat_l3 cdp_l3 hw_pstate ssbd mba ibrs ibpb stibp vmmcall fsgsbase bmi1 avx2 smep bmi2 erms invpcid cqm rdt_a rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves cqm_llc cqm_occup_llc cqm_mbm_total cqm_mbm_local clzero irperf xsaveerptr rdpru wbnoinvd arat npt lbrv svm_lock nrip_save tsc_scale vmcb_clean flushbyasid decodeassists pausefilter pfthreshold avic v_vmsave_vmload vgif v_spec_ctrl umip pku ospke vaes vpclmulqdq rdpid overflow_recov succor smca fsrm',
  bugs: ' sysret_ss_attrs null_seg spectre_v1 spectre_v2 spec_store_bypass',
  bogomips: ' 7585.97',
  TLB_size: ' 2560 4K pages',
  clflush_size: ' 64',
  cache_alignment: ' 64',
  address_sizes: ' 48 bits physical, 48 bits virtual',
  power_management: ' ts ttp tm hwpstate cpb eff_freq_ro [13] [14]'
}

```

##### uptime(callback)

```
proc.uptime((object) => console.log(object))
```

##### response:

```
{ sysUptime: 6269.48, idleProcess: 97369.73 }
```

### Feel free to contribute!

### Contact:

##### rubenfsolorzano@hotmail.com
