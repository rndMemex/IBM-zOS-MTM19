//*---------------------------------------------------------
 ----------------------------------------------------
   EXEC PGM=IDCAMS
NT DD SYSOUT=*
   DD *,SYMBOLS=CNVTSYS
 &SYSUID..CH13.VSAM
 &SYSUID..CH13.SEQ
 &SYSUID..CH13.PDS
 &SYSUID..CH13.PDSE
XCC=0
----------------------------------------------------
M EXEC PGM=IDCAMS
NT DD SYSOUT=*
   DD *,SYMBOLS=CNVTSYS
 CLUSTER ( NAME (&SYSUID..CH13.VSAM ) -
VOLUME(VPWRKB) TRACKS(1) RECORDSIZE(80,80) -
INDEXED KEY(1 0) -
CONTROLINTERVALSIZE(80) )
----------------------------------------------------
TE EXEC PGM=IEFBR14
----------------------------------------------------
   DD DISP=(NEW,CATLG,DELETE),
=(TRK,1),UNIT=SYSDA,
LRECL=80,DSORG=PS),
SYSUID..CH13.SEQ
----------------------------------------------------
   DD DISP=(NEW,CATLG,DELETE),
=(TRK,(1,,5)),UNIT=SYSDA,
LRECL=80,DSORG=PO),
SYSUID..CH13.PDS
----------------------------------------------------
   DD DISP=(NEW,CATLG,DELETE),
=(TRK,1),UNIT=SYSDA,
LRECL=80,DSORG=PO),DSNTYPE=LIBRARY,
SYSUID..CH13.PDSE
----------------------------------------------------
  EXEC PGM=IEBGENER
NT DD SYSOUT=*
   DD DSN=&SYSUID..CH13.SEQ,DISP=SHR
   DD *
IJKLMNOPQRSTUVWXYZ
   DD DUMMY
----------------------------------------------------
  EXEC PGM=IEBGENER
NT DD SYSOUT=*
   DD DSN=&SYSUID..CH13.PDS(CH13),DISP=SHR
   DD DSN=&SYSUID..CH13.SEQ,DISP=SHR
   DD DUMMY
----------------------------------------------------
  EXEC PGM=IEBGENER
NT DD SYSOUT=*
   DD PATH='/z/zzzzzz/ch13',
PTS=(OWRONLY,OCREAT,OTRUNC),
ODE=SIRWXU
   DD DSN=&SYSUID..CH13.SEQ,DISP=SHR
   DD DUMMY
----------------------------------------------------
  EXEC PGM=IEBCOPY
NT DD SYSOUT=*
   DD DSN=&SYSUID..CH13.PDS,DISP=SHR
   DD DSN=&SYSUID..CH13.PDSE,DISP=SHR
   DD *
  COPY OUTDD=PDSE,INDD=PD@
 MEMBER=CH13
----------------------------------------------------
  EXEC PGM=IDCAMS
NT DD SYSOUT=*
   DD DSN=&SYSUID..CH13.VSAM,DISP=SHR
   DD DSN=&SYSUID..CH13.SEQ,DISP=SHR
   DD *,SYMBOLS=CNVTSYS
INFILE(INREC) OUTFILE(VSAM)
----------------------------------------------------
C1.RC=0 & C2.RC=0 & C3.RC=0 & C4.RC=0 & C5.RC=0) THEN
  EXEC PGM=IKJEFT01
NT DD SYSOUT=*
RT DD DSN=&SYSUID..P2.OUTPUT(#13),DISP=SHR
N  DD *,SYMBOLS=CNVTSYS
LEVEL(&SYSUID)
F
----------------------------------------------------
  EXEC PGM=IDCAMS
NT DD SYSOUT=*
   DD *,SYMBOLS=CNVTSYS
 &SYSUID..CH13.VSAM
 &SYSUID..CH13.SEQ
 &SYSUID..CH13.PDS
 &SYSUID..CH13.PDSE
XCC=0
----------------------------------------------------
   EXEC PGM=BPXBATCH
   DD SYSOUT=*
   DD SYSOUT=*
M  DD *
l  ;
;
