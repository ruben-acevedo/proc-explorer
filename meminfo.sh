#!/bin/bash
MemTotal=$(awk '{ if (/MemTotal:/) {print $2} }' </proc/meminfo)
MemFree=$(awk '{ if (/MemFree:/) {print $2} }' </proc/meminfo)
MemAvailable=$(awk '{ if (/MemAvailable:/) {print $2} }' </proc/meminfo)
Buffers=$(awk '{ if (/Buffers:/) {print $2} }' </proc/meminfo)
Cached=$(awk '{ if (/Cached:/) {print $2} }' </proc/meminfo)
SwapCached=$(awk '{ if (/SwapCached:/) {print $2} }' </proc/meminfo)
Active=$(awk '{ if (/Active:/) {print $2} }' </proc/meminfo)
Inactive=$(awk '{ if (/Inactive:/) {print $2} }' </proc/meminfo)
Unevictable=$(awk '{ if (/Unevictable:/) {print $2} }' </proc/meminfo)
Mlocked=$(awk '{ if (/Mlocked:/) {print $2} }' </proc/meminfo)
SwapTotal=$(awk '{ if (/SwapTotal:/) {print $2} }' </proc/meminfo)
SwapFree=$(awk '{ if (/SwapFree:/) {print $2} }' </proc/meminfo)
Dirty=$(awk '{ if (/Dirty:/) {print $2} }' </proc/meminfo)
Writeback=$(awk '{ if (/Writeback:/) {print $2} }' </proc/meminfo)
AnonPages=$(awk '{ if (/AnonPages:/) {print $2} }' </proc/meminfo)
Mapped=$(awk '{ if (/Mapped:/) {print $2} }' </proc/meminfo)
Shmem=$(awk '{ if (/Shmem:/) {print $2} }' </proc/meminfo)
KReclaimable=$(awk '{ if (/KReclaimable:/) {print $2} }' </proc/meminfo)
Slab=$(awk '{ if (/Slab:/) {print $2} }' </proc/meminfo)
SReclaimable=$(awk '{ if (/SReclaimable:/) {print $2} }' </proc/meminfo)
SUnreclaim=$(awk '{ if (/SUnreclaim:/) {print $2} }' </proc/meminfo)
KernelStack=$(awk '{ if (/KernelStack:/) {print $2} }' </proc/meminfo)
PageTables=$(awk '{ if (/PageTables:/) {print $2} }' </proc/meminfo)
NFS_Unstable=$(awk '{ if (/NFS_Unstable:/) {print $2} }' </proc/meminfo)
Bounce=$(awk '{ if (/Bounce:/) {print $2} }' </proc/meminfo)
WritebackTmp=$(awk '{ if (/WritebackTmp:/) {print $2} }' </proc/meminfo)
CommitLimit=$(awk '{ if (/CommitLimit:/) {print $2} }' </proc/meminfo)
VmallocTotal=$(awk '{ if (/VmallocTotal:/) {print $2} }' </proc/meminfo)
VmallocUsed=$(awk '{ if (/VmallocUsed:/) {print $2} }' </proc/meminfo)
VmallocChunk=$(awk '{ if (/VmallocChunk:/) {print $2} }' </proc/meminfo)
Percpu=$(awk '{ if (/Percpu:/) {print $2} }' </proc/meminfo)
HardwareCorrupted=$(awk '{ if (/HardwareCorrupted:/) {print $2} }' </proc/meminfo)
AnonHugePages=$(awk '{ if (/AnonHugePages:/) {print $2} }' </proc/meminfo)
ShmemHugePages=$(awk '{ if (/ShmemHugePages:/) {print $2} }' </proc/meminfo)
ShmemPmdMapped=$(awk '{ if (/ShmemPmdMapped:/) {print $2} }' </proc/meminfo)
FileHugePages=$(awk '{ if (/FileHugePages:/) {print $2} }' </proc/meminfo)
FilePmdMapped=$(awk '{ if (/FilePmdMapped:/) {print $2} }' </proc/meminfo)
HugePages_Total=$(awk '{ if (/HugePages_Total:/) {print $2} }' </proc/meminfo)
HugePages_Free=$(awk '{ if (/HugePages_Free:/) {print $2} }' </proc/meminfo)
HugePages_Rsvd=$(awk '{ if (/HugePages_Rsvd:/) {print $2} }' </proc/meminfo)
HugePages_Surp=$(awk '{ if (/HugePages_Surp:/) {print $2} }' </proc/meminfo)
Hugepagesize=$(awk '{ if (/Hugepagesize:/) {print $2} }' </proc/meminfo)
Hugetlb=$(awk '{ if (/Hugetlb:/) {print $2} }' </proc/meminfo)
DirectMap4k=$(awk '{ if (/DirectMap4k:/) {print $2} }' </proc/meminfo)
DirectMap2M=$(awk '{ if (/DirectMap2M:/) {print $2} }' </proc/meminfo)
DirectMap1G=$(awk '{ if (/DirectMap1G:/) {print $2} }' </proc/meminfo)

echo '{
    "MemTotal": '$MemTotal',
    "MemFree":'$MemFree',
    "MemAvailable": '$MemAvailable',
    "Buffers": '$Buffers',
    "Cached": "'$Cached'",
    "SwapCached": '$SwapCached',
    "Active":'$Active',
    "Inactive":'$Inactive',
    "Unevictable": '$Unevictable',
    "Mlocked":  '$Mlocked',
    "SwapTotal": '$SwapTotal',
    "SwapFree": '$SwapTotal',
    "Dirty": '$Dirty',
    "Writeback": '$Writeback',
    "AnonPages": '$AnonPages',
    "Mapped": "'$Mapped'",
    "Shmem": '$Shmem',
    "KReclaimable": '$KReclaimable',
    "Slab": '$Slab',
    "SReclaimable": '$SReclaimable',
    "SUnreclaim": '$SUnreclaim',
    "KernelStack": '$KernelStack',
    "PageTables": '$PageTables',
    "NFS_Unstable": '$NFS_Unstable',
    "Bounce": '$Bounce',
    "WritebackTmp": '$WritebackTmp',
    "CommitLimit": '$CommitLimit',
    "VmallocTotal": '$VmallocTotal',
    "VmallocUsed": '$VmallocUsed',
    "VmallocChunk": '$VmallocChunk',
    "Percpu": '$Percpu',
    "HardwareCorrupted": '$HardwareCorrupted',
    "AnonHugePages": '$AnonHugePages',
    "ShmemHugePages": '$ShmemHugePages',
    "ShmemPmdMapped": '$ShmemPmdMapped',
    "FileHugePages": '$FileHugePages',
    "FilePmdMapped": '$FilePmdMapped',
    "HugePages_Total": '$HugePages_Total',
    "HugePages_Free": '$HugePages_Free',
    "HugePages_Rsvd": '$HugePages_Rsvd',
    "HugePages_Surp": '$HugePages_Surp',
    "Hugepagesize":   '$Hugepagesize',
    "Hugetlb": '$Hugetlb',
    "DirectMap4k": '$DirectMap4k',
    "DirectMap2M": '$DirectMap2M',
    "DirectMap1G": '$DirectMap1G'
}'