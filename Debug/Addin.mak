################################################
# Make file for CASIO fx-9860G SDK Addin
#
############################
# Directory defines
TCDIR = C:\Program Files\CASIO\fx-9860G SDK\OS\SH
OSDIR = C:\Program Files\CASIO\fx-9860G SDK\OS
APPDIR = E:\Anderain\fx-9860\fxTaumath
OUTDIR = E:\Anderain\fx-9860\fxTaumath\Debug

################
# Main Defines
SH_EXEDIR=$(TCDIR)\bin

# Hitachi SH C/C++ Compiler02 phase
SHCC02_EXE=shc.exe
SHCC02_DEP="$(OSDIR)\FX\include\fxlib.h" "defs.h" "prototypes.h" "stdafx.h" "dConsole.h"

# Hitachi SH Assembler03 phase
SHASM03_EXE=asmsh.exe

# Hitachi OptLinker04 phase
SHLINK04_EXE=Optlnk.exe
SHLINK04_DEP="$(OSDIR)\FX\lib\fx9860G_library.lib"
SHLINK04_DEP2="$(OSDIR)\FX\lib\setup.obj"

#######################
# Files to build
FILE0=zero
FILESRC0="$(APPDIR)\$(FILE0).c"
FILEOBJ0="$(OUTDIR)\$(FILE0).obj"
FILE1=abs
FILESRC1="$(APPDIR)\$(FILE1).c"
FILEOBJ1="$(OUTDIR)\$(FILE1).obj"
FILE2=adj
FILESRC2="$(APPDIR)\$(FILE2).c"
FILEOBJ2="$(OUTDIR)\$(FILE2).obj"
FILE3=alloc
FILESRC3="$(APPDIR)\$(FILE3).c"
FILEOBJ3="$(OUTDIR)\$(FILE3).obj"
FILE4=append
FILESRC4="$(APPDIR)\$(FILE4).c"
FILEOBJ4="$(OUTDIR)\$(FILE4).obj"
FILE5=arccos
FILESRC5="$(APPDIR)\$(FILE5).c"
FILEOBJ5="$(OUTDIR)\$(FILE5).obj"
FILE6=arccosh
FILESRC6="$(APPDIR)\$(FILE6).c"
FILEOBJ6="$(OUTDIR)\$(FILE6).obj"
FILE7=arcsin
FILESRC7="$(APPDIR)\$(FILE7).c"
FILEOBJ7="$(OUTDIR)\$(FILE7).obj"
FILE8=arcsinh
FILESRC8="$(APPDIR)\$(FILE8).c"
FILEOBJ8="$(OUTDIR)\$(FILE8).obj"
FILE9=arctan
FILESRC9="$(APPDIR)\$(FILE9).c"
FILEOBJ9="$(OUTDIR)\$(FILE9).obj"
FILE10=arctanh
FILESRC10="$(APPDIR)\$(FILE10).c"
FILEOBJ10="$(OUTDIR)\$(FILE10).obj"
FILE11=arg
FILESRC11="$(APPDIR)\$(FILE11).c"
FILEOBJ11="$(OUTDIR)\$(FILE11).obj"
FILE12=bake
FILESRC12="$(APPDIR)\$(FILE12).c"
FILEOBJ12="$(OUTDIR)\$(FILE12).obj"
FILE13=bignum
FILESRC13="$(APPDIR)\$(FILE13).c"
FILEOBJ13="$(OUTDIR)\$(FILE13).obj"
FILE14=binomial
FILESRC14="$(APPDIR)\$(FILE14).c"
FILEOBJ14="$(OUTDIR)\$(FILE14).obj"
FILE15=ceiling
FILESRC15="$(APPDIR)\$(FILE15).c"
FILEOBJ15="$(OUTDIR)\$(FILE15).obj"
FILE16=choose
FILESRC16="$(APPDIR)\$(FILE16).c"
FILEOBJ16="$(OUTDIR)\$(FILE16).obj"
FILE17=circexp
FILESRC17="$(APPDIR)\$(FILE17).c"
FILEOBJ17="$(OUTDIR)\$(FILE17).obj"
FILE18=clear
FILESRC18="$(APPDIR)\$(FILE18).c"
FILEOBJ18="$(OUTDIR)\$(FILE18).obj"
FILE19=clock
FILESRC19="$(APPDIR)\$(FILE19).c"
FILEOBJ19="$(OUTDIR)\$(FILE19).obj"
FILE20=coeff
FILESRC20="$(APPDIR)\$(FILE20).c"
FILEOBJ20="$(OUTDIR)\$(FILE20).obj"
FILE21=cofactor
FILESRC21="$(APPDIR)\$(FILE21).c"
FILEOBJ21="$(OUTDIR)\$(FILE21).obj"
FILE22=condense
FILESRC22="$(APPDIR)\$(FILE22).c"
FILEOBJ22="$(OUTDIR)\$(FILE22).obj"
FILE23=conj
FILESRC23="$(APPDIR)\$(FILE23).c"
FILEOBJ23="$(OUTDIR)\$(FILE23).obj"
FILE24=cons
FILESRC24="$(APPDIR)\$(FILE24).c"
FILEOBJ24="$(OUTDIR)\$(FILE24).obj"
FILE25=contract
FILESRC25="$(APPDIR)\$(FILE25).c"
FILEOBJ25="$(OUTDIR)\$(FILE25).obj"
FILE26=cos
FILESRC26="$(APPDIR)\$(FILE26).c"
FILEOBJ26="$(OUTDIR)\$(FILE26).obj"
FILE27=cosh
FILESRC27="$(APPDIR)\$(FILE27).c"
FILEOBJ27="$(OUTDIR)\$(FILE27).obj"
FILE28=data
FILESRC28="$(APPDIR)\$(FILE28).c"
FILEOBJ28="$(OUTDIR)\$(FILE28).obj"
FILE29=decomp
FILESRC29="$(APPDIR)\$(FILE29).c"
FILEOBJ29="$(OUTDIR)\$(FILE29).obj"
FILE30=define
FILESRC30="$(APPDIR)\$(FILE30).c"
FILEOBJ30="$(OUTDIR)\$(FILE30).obj"
FILE31=defint
FILESRC31="$(APPDIR)\$(FILE31).c"
FILEOBJ31="$(OUTDIR)\$(FILE31).obj"
FILE32=degree
FILESRC32="$(APPDIR)\$(FILE32).c"
FILEOBJ32="$(OUTDIR)\$(FILE32).obj"
FILE33=denominator
FILESRC33="$(APPDIR)\$(FILE33).c"
FILEOBJ33="$(OUTDIR)\$(FILE33).obj"
FILE34=derivative
FILESRC34="$(APPDIR)\$(FILE34).c"
FILEOBJ34="$(OUTDIR)\$(FILE34).obj"
FILE35=det
FILESRC35="$(APPDIR)\$(FILE35).c"
FILEOBJ35="$(OUTDIR)\$(FILE35).obj"
FILE36=dirac
FILESRC36="$(APPDIR)\$(FILE36).c"
FILEOBJ36="$(OUTDIR)\$(FILE36).obj"
FILE37=display
FILESRC37="$(APPDIR)\$(FILE37).c"
FILEOBJ37="$(OUTDIR)\$(FILE37).obj"
FILE38=distill
FILESRC38="$(APPDIR)\$(FILE38).c"
FILEOBJ38="$(OUTDIR)\$(FILE38).obj"
FILE39=divisors
FILESRC39="$(APPDIR)\$(FILE39).c"
FILEOBJ39="$(OUTDIR)\$(FILE39).obj"
FILE40=dpow
FILESRC40="$(APPDIR)\$(FILE40).c"
FILEOBJ40="$(OUTDIR)\$(FILE40).obj"
FILE41=dsolve
FILESRC41="$(APPDIR)\$(FILE41).c"
FILEOBJ41="$(OUTDIR)\$(FILE41).obj"
FILE42=eigen
FILESRC42="$(APPDIR)\$(FILE42).c"
FILEOBJ42="$(OUTDIR)\$(FILE42).obj"
FILE43=erf
FILESRC43="$(APPDIR)\$(FILE43).c"
FILEOBJ43="$(OUTDIR)\$(FILE43).obj"
FILE44=erfc
FILESRC44="$(APPDIR)\$(FILE44).c"
FILEOBJ44="$(OUTDIR)\$(FILE44).obj"
FILE45=eval
FILESRC45="$(APPDIR)\$(FILE45).c"
FILEOBJ45="$(OUTDIR)\$(FILE45).obj"
FILE46=expand
FILESRC46="$(APPDIR)\$(FILE46).c"
FILEOBJ46="$(OUTDIR)\$(FILE46).obj"
FILE47=expcos
FILESRC47="$(APPDIR)\$(FILE47).c"
FILEOBJ47="$(OUTDIR)\$(FILE47).obj"
FILE48=expsin
FILESRC48="$(APPDIR)\$(FILE48).c"
FILEOBJ48="$(OUTDIR)\$(FILE48).obj"
FILE49=factor
FILESRC49="$(APPDIR)\$(FILE49).c"
FILEOBJ49="$(OUTDIR)\$(FILE49).obj"
FILE50=factorial
FILESRC50="$(APPDIR)\$(FILE50).c"
FILEOBJ50="$(OUTDIR)\$(FILE50).obj"
FILE51=factorpoly
FILESRC51="$(APPDIR)\$(FILE51).c"
FILEOBJ51="$(OUTDIR)\$(FILE51).obj"
FILE52=factors
FILESRC52="$(APPDIR)\$(FILE52).c"
FILEOBJ52="$(OUTDIR)\$(FILE52).obj"
FILE53=filter
FILESRC53="$(APPDIR)\$(FILE53).c"
FILEOBJ53="$(OUTDIR)\$(FILE53).obj"
FILE54=find
FILESRC54="$(APPDIR)\$(FILE54).c"
FILEOBJ54="$(OUTDIR)\$(FILE54).obj"
FILE55=float
FILESRC55="$(APPDIR)\$(FILE55).c"
FILEOBJ55="$(OUTDIR)\$(FILE55).obj"
FILE56=floor
FILESRC56="$(APPDIR)\$(FILE56).c"
FILEOBJ56="$(OUTDIR)\$(FILE56).obj"
FILE57=for
FILESRC57="$(APPDIR)\$(FILE57).c"
FILEOBJ57="$(OUTDIR)\$(FILE57).obj"
FILE58=gamma
FILESRC58="$(APPDIR)\$(FILE58).c"
FILEOBJ58="$(OUTDIR)\$(FILE58).obj"
FILE59=gcd
FILESRC59="$(APPDIR)\$(FILE59).c"
FILEOBJ59="$(OUTDIR)\$(FILE59).obj"
FILE60=guess
FILESRC60="$(APPDIR)\$(FILE60).c"
FILEOBJ60="$(OUTDIR)\$(FILE60).obj"
FILE61=hermite
FILESRC61="$(APPDIR)\$(FILE61).c"
FILEOBJ61="$(OUTDIR)\$(FILE61).obj"
FILE62=hilbert
FILESRC62="$(APPDIR)\$(FILE62).c"
FILEOBJ62="$(OUTDIR)\$(FILE62).obj"
FILE63=imag
FILESRC63="$(APPDIR)\$(FILE63).c"
FILEOBJ63="$(OUTDIR)\$(FILE63).obj"
FILE64=index
FILESRC64="$(APPDIR)\$(FILE64).c"
FILEOBJ64="$(OUTDIR)\$(FILE64).obj"
FILE65=init
FILESRC65="$(APPDIR)\$(FILE65).c"
FILEOBJ65="$(OUTDIR)\$(FILE65).obj"
FILE66=inner
FILESRC66="$(APPDIR)\$(FILE66).c"
FILEOBJ66="$(OUTDIR)\$(FILE66).obj"
FILE67=int64
FILESRC67="$(APPDIR)\$(FILE67).c"
FILEOBJ67="$(OUTDIR)\$(FILE67).obj"
FILE68=integral
FILESRC68="$(APPDIR)\$(FILE68).c"
FILEOBJ68="$(OUTDIR)\$(FILE68).obj"
FILE69=inv
FILESRC69="$(APPDIR)\$(FILE69).c"
FILEOBJ69="$(OUTDIR)\$(FILE69).obj"
FILE70=is
FILESRC70="$(APPDIR)\$(FILE70).c"
FILEOBJ70="$(OUTDIR)\$(FILE70).obj"
FILE71=isprime
FILESRC71="$(APPDIR)\$(FILE71).c"
FILEOBJ71="$(OUTDIR)\$(FILE71).obj"
FILE72=itab
FILESRC72="$(APPDIR)\$(FILE72).c"
FILEOBJ72="$(OUTDIR)\$(FILE72).obj"
FILE73=itest
FILESRC73="$(APPDIR)\$(FILE73).c"
FILEOBJ73="$(OUTDIR)\$(FILE73).obj"
FILE74=laguerre
FILESRC74="$(APPDIR)\$(FILE74).c"
FILEOBJ74="$(OUTDIR)\$(FILE74).obj"
FILE75=laplace
FILESRC75="$(APPDIR)\$(FILE75).c"
FILEOBJ75="$(OUTDIR)\$(FILE75).obj"
FILE76=lcm
FILESRC76="$(APPDIR)\$(FILE76).c"
FILEOBJ76="$(OUTDIR)\$(FILE76).obj"
FILE77=leading
FILESRC77="$(APPDIR)\$(FILE77).c"
FILEOBJ77="$(OUTDIR)\$(FILE77).obj"
FILE78=legendre
FILESRC78="$(APPDIR)\$(FILE78).c"
FILEOBJ78="$(OUTDIR)\$(FILE78).obj"
FILE79=list
FILESRC79="$(APPDIR)\$(FILE79).c"
FILEOBJ79="$(OUTDIR)\$(FILE79).obj"
FILE80=log
FILESRC80="$(APPDIR)\$(FILE80).c"
FILEOBJ80="$(OUTDIR)\$(FILE80).obj"
FILE81=madd
FILESRC81="$(APPDIR)\$(FILE81).c"
FILEOBJ81="$(OUTDIR)\$(FILE81).obj"
FILE82=mag
FILESRC82="$(APPDIR)\$(FILE82).c"
FILEOBJ82="$(OUTDIR)\$(FILE82).obj"
FILE83=main
FILESRC83="$(APPDIR)\$(FILE83).c"
FILEOBJ83="$(OUTDIR)\$(FILE83).obj"
FILE84=mcmp
FILESRC84="$(APPDIR)\$(FILE84).c"
FILEOBJ84="$(OUTDIR)\$(FILE84).obj"
FILE85=mfactor
FILESRC85="$(APPDIR)\$(FILE85).c"
FILEOBJ85="$(OUTDIR)\$(FILE85).obj"
FILE86=mgcd
FILESRC86="$(APPDIR)\$(FILE86).c"
FILEOBJ86="$(OUTDIR)\$(FILE86).obj"
FILE87=misc
FILESRC87="$(APPDIR)\$(FILE87).c"
FILEOBJ87="$(OUTDIR)\$(FILE87).obj"
FILE88=mmodpow
FILESRC88="$(APPDIR)\$(FILE88).c"
FILEOBJ88="$(OUTDIR)\$(FILE88).obj"
FILE89=mmul
FILESRC89="$(APPDIR)\$(FILE89).c"
FILEOBJ89="$(OUTDIR)\$(FILE89).obj"
FILE90=mod
FILESRC90="$(APPDIR)\$(FILE90).c"
FILEOBJ90="$(OUTDIR)\$(FILE90).obj"
FILE91=mpow
FILESRC91="$(APPDIR)\$(FILE91).c"
FILEOBJ91="$(OUTDIR)\$(FILE91).obj"
FILE92=mprime
FILESRC92="$(APPDIR)\$(FILE92).c"
FILEOBJ92="$(OUTDIR)\$(FILE92).obj"
FILE93=mroot
FILESRC93="$(APPDIR)\$(FILE93).c"
FILEOBJ93="$(OUTDIR)\$(FILE93).obj"
FILE94=mscan
FILESRC94="$(APPDIR)\$(FILE94).c"
FILEOBJ94="$(OUTDIR)\$(FILE94).obj"
FILE95=mstr
FILESRC95="$(APPDIR)\$(FILE95).c"
FILEOBJ95="$(OUTDIR)\$(FILE95).obj"
FILE96=multiply
FILESRC96="$(APPDIR)\$(FILE96).c"
FILEOBJ96="$(OUTDIR)\$(FILE96).obj"
FILE97=nroots
FILESRC97="$(APPDIR)\$(FILE97).c"
FILEOBJ97="$(OUTDIR)\$(FILE97).obj"
FILE98=numerator
FILESRC98="$(APPDIR)\$(FILE98).c"
FILEOBJ98="$(OUTDIR)\$(FILE98).obj"
FILE99=outer
FILESRC99="$(APPDIR)\$(FILE99).c"
FILEOBJ99="$(OUTDIR)\$(FILE99).obj"
FILE100=partition
FILESRC100="$(APPDIR)\$(FILE100).c"
FILEOBJ100="$(OUTDIR)\$(FILE100).obj"
FILE101=polar
FILESRC101="$(APPDIR)\$(FILE101).c"
FILEOBJ101="$(OUTDIR)\$(FILE101).obj"
FILE102=pollard
FILESRC102="$(APPDIR)\$(FILE102).c"
FILEOBJ102="$(OUTDIR)\$(FILE102).obj"
FILE103=power
FILESRC103="$(APPDIR)\$(FILE103).c"
FILEOBJ103="$(OUTDIR)\$(FILE103).obj"
FILE104=prime
FILESRC104="$(APPDIR)\$(FILE104).c"
FILEOBJ104="$(OUTDIR)\$(FILE104).obj"
FILE105=primetab
FILESRC105="$(APPDIR)\$(FILE105).c"
FILEOBJ105="$(OUTDIR)\$(FILE105).obj"
FILE106=print
FILESRC106="$(APPDIR)\$(FILE106).c"
FILEOBJ106="$(OUTDIR)\$(FILE106).obj"
FILE107=product
FILESRC107="$(APPDIR)\$(FILE107).c"
FILEOBJ107="$(OUTDIR)\$(FILE107).obj"
FILE108=qadd
FILESRC108="$(APPDIR)\$(FILE108).c"
FILEOBJ108="$(OUTDIR)\$(FILE108).obj"
FILE109=qdiv
FILESRC109="$(APPDIR)\$(FILE109).c"
FILEOBJ109="$(OUTDIR)\$(FILE109).obj"
FILE110=qmul
FILESRC110="$(APPDIR)\$(FILE110).c"
FILEOBJ110="$(OUTDIR)\$(FILE110).obj"
FILE111=qpow
FILESRC111="$(APPDIR)\$(FILE111).c"
FILEOBJ111="$(OUTDIR)\$(FILE111).obj"
FILE112=qsub
FILESRC112="$(APPDIR)\$(FILE112).c"
FILEOBJ112="$(OUTDIR)\$(FILE112).obj"
FILE113=quickfactor
FILESRC113="$(APPDIR)\$(FILE113).c"
FILEOBJ113="$(OUTDIR)\$(FILE113).obj"
FILE114=quotient
FILESRC114="$(APPDIR)\$(FILE114).c"
FILEOBJ114="$(OUTDIR)\$(FILE114).obj"
FILE115=rationalize
FILESRC115="$(APPDIR)\$(FILE115).c"
FILEOBJ115="$(OUTDIR)\$(FILE115).obj"
FILE116=real
FILESRC116="$(APPDIR)\$(FILE116).c"
FILEOBJ116="$(OUTDIR)\$(FILE116).obj"
FILE117=rect
FILESRC117="$(APPDIR)\$(FILE117).c"
FILEOBJ117="$(OUTDIR)\$(FILE117).obj"
FILE118=rewrite
FILESRC118="$(APPDIR)\$(FILE118).c"
FILEOBJ118="$(OUTDIR)\$(FILE118).obj"
FILE119=roots
FILESRC119="$(APPDIR)\$(FILE119).c"
FILEOBJ119="$(OUTDIR)\$(FILE119).obj"
FILE120=run
FILESRC120="$(APPDIR)\$(FILE120).c"
FILEOBJ120="$(OUTDIR)\$(FILE120).obj"
FILE121=scan
FILESRC121="$(APPDIR)\$(FILE121).c"
FILEOBJ121="$(OUTDIR)\$(FILE121).obj"
FILE122=sgn
FILESRC122="$(APPDIR)\$(FILE122).c"
FILEOBJ122="$(OUTDIR)\$(FILE122).obj"
FILE123=simfac
FILESRC123="$(APPDIR)\$(FILE123).c"
FILEOBJ123="$(OUTDIR)\$(FILE123).obj"
FILE124=simplify
FILESRC124="$(APPDIR)\$(FILE124).c"
FILEOBJ124="$(OUTDIR)\$(FILE124).obj"
FILE125=sin
FILESRC125="$(APPDIR)\$(FILE125).c"
FILEOBJ125="$(OUTDIR)\$(FILE125).obj"
FILE126=sinh
FILESRC126="$(APPDIR)\$(FILE126).c"
FILEOBJ126="$(OUTDIR)\$(FILE126).obj"
FILE127=stack
FILESRC127="$(APPDIR)\$(FILE127).c"
FILEOBJ127="$(OUTDIR)\$(FILE127).obj"
FILE128=subst
FILESRC128="$(APPDIR)\$(FILE128).c"
FILEOBJ128="$(OUTDIR)\$(FILE128).obj"
FILE129=sum
FILESRC129="$(APPDIR)\$(FILE129).c"
FILEOBJ129="$(OUTDIR)\$(FILE129).obj"
FILE130=symbol
FILESRC130="$(APPDIR)\$(FILE130).c"
FILEOBJ130="$(OUTDIR)\$(FILE130).obj"
FILE131=tan
FILESRC131="$(APPDIR)\$(FILE131).c"
FILEOBJ131="$(OUTDIR)\$(FILE131).obj"
FILE132=tanh
FILESRC132="$(APPDIR)\$(FILE132).c"
FILEOBJ132="$(OUTDIR)\$(FILE132).obj"
FILE133=Taumath
FILESRC133="$(APPDIR)\$(FILE133).c"
FILEOBJ133="$(OUTDIR)\$(FILE133).obj"
FILE134=taylor
FILESRC134="$(APPDIR)\$(FILE134).c"
FILEOBJ134="$(OUTDIR)\$(FILE134).obj"
FILE135=tensor
FILESRC135="$(APPDIR)\$(FILE135).c"
FILEOBJ135="$(OUTDIR)\$(FILE135).obj"
FILE136=test
FILESRC136="$(APPDIR)\$(FILE136).c"
FILEOBJ136="$(OUTDIR)\$(FILE136).obj"
FILE137=transform
FILESRC137="$(APPDIR)\$(FILE137).c"
FILEOBJ137="$(OUTDIR)\$(FILE137).obj"
FILE138=transpose
FILESRC138="$(APPDIR)\$(FILE138).c"
FILEOBJ138="$(OUTDIR)\$(FILE138).obj"
FILE139=userfunc
FILESRC139="$(APPDIR)\$(FILE139).c"
FILEOBJ139="$(OUTDIR)\$(FILE139).obj"
FILE140=variables
FILESRC140="$(APPDIR)\$(FILE140).c"
FILEOBJ140="$(OUTDIR)\$(FILE140).obj"
FILE141=vectorize
FILESRC141="$(APPDIR)\$(FILE141).c"
FILEOBJ141="$(OUTDIR)\$(FILE141).obj"
FILE142=add
FILESRC142="$(APPDIR)\$(FILE142).c"
FILEOBJ142="$(OUTDIR)\$(FILE142).obj"
FILE143=dConsole
FILESRC143="$(APPDIR)\$(FILE143).c"
FILEOBJ143="$(OUTDIR)\$(FILE143).obj"
RFILE=FXADDINror
USERALLOBJ=$(FILEOBJ0) $(FILEOBJ1) $(FILEOBJ2) $(FILEOBJ3) $(FILEOBJ4) $(FILEOBJ5) $(FILEOBJ6) $(FILEOBJ7) $(FILEOBJ8) $(FILEOBJ9) \
      $(FILEOBJ10) $(FILEOBJ11) $(FILEOBJ12) $(FILEOBJ13) $(FILEOBJ14) $(FILEOBJ15) $(FILEOBJ16) $(FILEOBJ17) $(FILEOBJ18) $(FILEOBJ19) \
      $(FILEOBJ20) $(FILEOBJ21) $(FILEOBJ22) $(FILEOBJ23) $(FILEOBJ24) $(FILEOBJ25) $(FILEOBJ26) $(FILEOBJ27) $(FILEOBJ28) $(FILEOBJ29) \
      $(FILEOBJ30) $(FILEOBJ31) $(FILEOBJ32) $(FILEOBJ33) $(FILEOBJ34) $(FILEOBJ35) $(FILEOBJ36) $(FILEOBJ37) $(FILEOBJ38) $(FILEOBJ39) \
      $(FILEOBJ40) $(FILEOBJ41) $(FILEOBJ42) $(FILEOBJ43) $(FILEOBJ44) $(FILEOBJ45) $(FILEOBJ46) $(FILEOBJ47) $(FILEOBJ48) $(FILEOBJ49) \
      $(FILEOBJ50) $(FILEOBJ51) $(FILEOBJ52) $(FILEOBJ53) $(FILEOBJ54) $(FILEOBJ55) $(FILEOBJ56) $(FILEOBJ57) $(FILEOBJ58) $(FILEOBJ59) \
      $(FILEOBJ60) $(FILEOBJ61) $(FILEOBJ62) $(FILEOBJ63) $(FILEOBJ64) $(FILEOBJ65) $(FILEOBJ66) $(FILEOBJ67) $(FILEOBJ68) $(FILEOBJ69) \
      $(FILEOBJ70) $(FILEOBJ71) $(FILEOBJ72) $(FILEOBJ73) $(FILEOBJ74) $(FILEOBJ75) $(FILEOBJ76) $(FILEOBJ77) $(FILEOBJ78) $(FILEOBJ79) \
      $(FILEOBJ80) $(FILEOBJ81) $(FILEOBJ82) $(FILEOBJ83) $(FILEOBJ84) $(FILEOBJ85) $(FILEOBJ86) $(FILEOBJ87) $(FILEOBJ88) $(FILEOBJ89) \
      $(FILEOBJ90) $(FILEOBJ91) $(FILEOBJ92) $(FILEOBJ93) $(FILEOBJ94) $(FILEOBJ95) $(FILEOBJ96) $(FILEOBJ97) $(FILEOBJ98) $(FILEOBJ99) \
      $(FILEOBJ100) $(FILEOBJ101) $(FILEOBJ102) $(FILEOBJ103) $(FILEOBJ104) $(FILEOBJ105) $(FILEOBJ106) $(FILEOBJ107) $(FILEOBJ108) \
      $(FILEOBJ109) $(FILEOBJ110) $(FILEOBJ111) $(FILEOBJ112) $(FILEOBJ113) $(FILEOBJ114) $(FILEOBJ115) $(FILEOBJ116) $(FILEOBJ117) \
      $(FILEOBJ118) $(FILEOBJ119) $(FILEOBJ120) $(FILEOBJ121) $(FILEOBJ122) $(FILEOBJ123) $(FILEOBJ124) $(FILEOBJ125) $(FILEOBJ126) \
      $(FILEOBJ127) $(FILEOBJ128) $(FILEOBJ129) $(FILEOBJ130) $(FILEOBJ131) $(FILEOBJ132) $(FILEOBJ133) $(FILEOBJ134) $(FILEOBJ135) \
      $(FILEOBJ136) $(FILEOBJ137) $(FILEOBJ138) $(FILEOBJ139) $(FILEOBJ140) $(FILEOBJ141) $(FILEOBJ142) $(FILEOBJ143)

#######################
# nmake "all" statement

ALL:  SH_ENV \
	$(USERALLOBJ) \
	$(OUTDIR)\$(RFILE).bin \

####################
# Description blocks

!MESSAGE %3#C$z`&'0?
!MESSAGE
!MESSAGE Executing Hitachi SH C/C++ Compiler/Assembler phase
!MESSAGE

SH_ENV : 
	set SHC_INC=$(TCDIR)\include
	set PATH=$(TCDIR)\bin
	set SHC_LIB=$(TCDIR)\bin
	set SHC_TMP=$(OUTDIR)

$(FILEOBJ0) : $(FILESRC0) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ0)
-show=source
-listfile="$(OUTDIR)\$(FILE0).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC0)
-lang=c
-nologo
-debug
<<

$(FILEOBJ1) : $(FILESRC1) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ1)
-show=source
-listfile="$(OUTDIR)\$(FILE1).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC1)
-lang=c
-nologo
-debug
<<

$(FILEOBJ2) : $(FILESRC2) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ2)
-show=source
-listfile="$(OUTDIR)\$(FILE2).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC2)
-lang=c
-nologo
-debug
<<

$(FILEOBJ3) : $(FILESRC3) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ3)
-show=source
-listfile="$(OUTDIR)\$(FILE3).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC3)
-lang=c
-nologo
-debug
<<

$(FILEOBJ4) : $(FILESRC4) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ4)
-show=source
-listfile="$(OUTDIR)\$(FILE4).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC4)
-lang=c
-nologo
-debug
<<

$(FILEOBJ5) : $(FILESRC5) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ5)
-show=source
-listfile="$(OUTDIR)\$(FILE5).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC5)
-lang=c
-nologo
-debug
<<

$(FILEOBJ6) : $(FILESRC6) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ6)
-show=source
-listfile="$(OUTDIR)\$(FILE6).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC6)
-lang=c
-nologo
-debug
<<

$(FILEOBJ7) : $(FILESRC7) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ7)
-show=source
-listfile="$(OUTDIR)\$(FILE7).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC7)
-lang=c
-nologo
-debug
<<

$(FILEOBJ8) : $(FILESRC8) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ8)
-show=source
-listfile="$(OUTDIR)\$(FILE8).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC8)
-lang=c
-nologo
-debug
<<

$(FILEOBJ9) : $(FILESRC9) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ9)
-show=source
-listfile="$(OUTDIR)\$(FILE9).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC9)
-lang=c
-nologo
-debug
<<

$(FILEOBJ10) : $(FILESRC10) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ10)
-show=source
-listfile="$(OUTDIR)\$(FILE10).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC10)
-lang=c
-nologo
-debug
<<

$(FILEOBJ11) : $(FILESRC11) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ11)
-show=source
-listfile="$(OUTDIR)\$(FILE11).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC11)
-lang=c
-nologo
-debug
<<

$(FILEOBJ12) : $(FILESRC12) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ12)
-show=source
-listfile="$(OUTDIR)\$(FILE12).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC12)
-lang=c
-nologo
-debug
<<

$(FILEOBJ13) : $(FILESRC13) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ13)
-show=source
-listfile="$(OUTDIR)\$(FILE13).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC13)
-lang=c
-nologo
-debug
<<

$(FILEOBJ14) : $(FILESRC14) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ14)
-show=source
-listfile="$(OUTDIR)\$(FILE14).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC14)
-lang=c
-nologo
-debug
<<

$(FILEOBJ15) : $(FILESRC15) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ15)
-show=source
-listfile="$(OUTDIR)\$(FILE15).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC15)
-lang=c
-nologo
-debug
<<

$(FILEOBJ16) : $(FILESRC16) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ16)
-show=source
-listfile="$(OUTDIR)\$(FILE16).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC16)
-lang=c
-nologo
-debug
<<

$(FILEOBJ17) : $(FILESRC17) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ17)
-show=source
-listfile="$(OUTDIR)\$(FILE17).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC17)
-lang=c
-nologo
-debug
<<

$(FILEOBJ18) : $(FILESRC18) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ18)
-show=source
-listfile="$(OUTDIR)\$(FILE18).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC18)
-lang=c
-nologo
-debug
<<

$(FILEOBJ19) : $(FILESRC19) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ19)
-show=source
-listfile="$(OUTDIR)\$(FILE19).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC19)
-lang=c
-nologo
-debug
<<

$(FILEOBJ20) : $(FILESRC20) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ20)
-show=source
-listfile="$(OUTDIR)\$(FILE20).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC20)
-lang=c
-nologo
-debug
<<

$(FILEOBJ21) : $(FILESRC21) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ21)
-show=source
-listfile="$(OUTDIR)\$(FILE21).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC21)
-lang=c
-nologo
-debug
<<

$(FILEOBJ22) : $(FILESRC22) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ22)
-show=source
-listfile="$(OUTDIR)\$(FILE22).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC22)
-lang=c
-nologo
-debug
<<

$(FILEOBJ23) : $(FILESRC23) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ23)
-show=source
-listfile="$(OUTDIR)\$(FILE23).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC23)
-lang=c
-nologo
-debug
<<

$(FILEOBJ24) : $(FILESRC24) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ24)
-show=source
-listfile="$(OUTDIR)\$(FILE24).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC24)
-lang=c
-nologo
-debug
<<

$(FILEOBJ25) : $(FILESRC25) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ25)
-show=source
-listfile="$(OUTDIR)\$(FILE25).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC25)
-lang=c
-nologo
-debug
<<

$(FILEOBJ26) : $(FILESRC26) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ26)
-show=source
-listfile="$(OUTDIR)\$(FILE26).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC26)
-lang=c
-nologo
-debug
<<

$(FILEOBJ27) : $(FILESRC27) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ27)
-show=source
-listfile="$(OUTDIR)\$(FILE27).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC27)
-lang=c
-nologo
-debug
<<

$(FILEOBJ28) : $(FILESRC28) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ28)
-show=source
-listfile="$(OUTDIR)\$(FILE28).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC28)
-lang=c
-nologo
-debug
<<

$(FILEOBJ29) : $(FILESRC29) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ29)
-show=source
-listfile="$(OUTDIR)\$(FILE29).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC29)
-lang=c
-nologo
-debug
<<

$(FILEOBJ30) : $(FILESRC30) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ30)
-show=source
-listfile="$(OUTDIR)\$(FILE30).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC30)
-lang=c
-nologo
-debug
<<

$(FILEOBJ31) : $(FILESRC31) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ31)
-show=source
-listfile="$(OUTDIR)\$(FILE31).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC31)
-lang=c
-nologo
-debug
<<

$(FILEOBJ32) : $(FILESRC32) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ32)
-show=source
-listfile="$(OUTDIR)\$(FILE32).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC32)
-lang=c
-nologo
-debug
<<

$(FILEOBJ33) : $(FILESRC33) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ33)
-show=source
-listfile="$(OUTDIR)\$(FILE33).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC33)
-lang=c
-nologo
-debug
<<

$(FILEOBJ34) : $(FILESRC34) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ34)
-show=source
-listfile="$(OUTDIR)\$(FILE34).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC34)
-lang=c
-nologo
-debug
<<

$(FILEOBJ35) : $(FILESRC35) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ35)
-show=source
-listfile="$(OUTDIR)\$(FILE35).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC35)
-lang=c
-nologo
-debug
<<

$(FILEOBJ36) : $(FILESRC36) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ36)
-show=source
-listfile="$(OUTDIR)\$(FILE36).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC36)
-lang=c
-nologo
-debug
<<

$(FILEOBJ37) : $(FILESRC37) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ37)
-show=source
-listfile="$(OUTDIR)\$(FILE37).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC37)
-lang=c
-nologo
-debug
<<

$(FILEOBJ38) : $(FILESRC38) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ38)
-show=source
-listfile="$(OUTDIR)\$(FILE38).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC38)
-lang=c
-nologo
-debug
<<

$(FILEOBJ39) : $(FILESRC39) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ39)
-show=source
-listfile="$(OUTDIR)\$(FILE39).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC39)
-lang=c
-nologo
-debug
<<

$(FILEOBJ40) : $(FILESRC40) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ40)
-show=source
-listfile="$(OUTDIR)\$(FILE40).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC40)
-lang=c
-nologo
-debug
<<

$(FILEOBJ41) : $(FILESRC41) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ41)
-show=source
-listfile="$(OUTDIR)\$(FILE41).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC41)
-lang=c
-nologo
-debug
<<

$(FILEOBJ42) : $(FILESRC42) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ42)
-show=source
-listfile="$(OUTDIR)\$(FILE42).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC42)
-lang=c
-nologo
-debug
<<

$(FILEOBJ43) : $(FILESRC43) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ43)
-show=source
-listfile="$(OUTDIR)\$(FILE43).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC43)
-lang=c
-nologo
-debug
<<

$(FILEOBJ44) : $(FILESRC44) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ44)
-show=source
-listfile="$(OUTDIR)\$(FILE44).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC44)
-lang=c
-nologo
-debug
<<

$(FILEOBJ45) : $(FILESRC45) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ45)
-show=source
-listfile="$(OUTDIR)\$(FILE45).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC45)
-lang=c
-nologo
-debug
<<

$(FILEOBJ46) : $(FILESRC46) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ46)
-show=source
-listfile="$(OUTDIR)\$(FILE46).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC46)
-lang=c
-nologo
-debug
<<

$(FILEOBJ47) : $(FILESRC47) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ47)
-show=source
-listfile="$(OUTDIR)\$(FILE47).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC47)
-lang=c
-nologo
-debug
<<

$(FILEOBJ48) : $(FILESRC48) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ48)
-show=source
-listfile="$(OUTDIR)\$(FILE48).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC48)
-lang=c
-nologo
-debug
<<

$(FILEOBJ49) : $(FILESRC49) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ49)
-show=source
-listfile="$(OUTDIR)\$(FILE49).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC49)
-lang=c
-nologo
-debug
<<

$(FILEOBJ50) : $(FILESRC50) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ50)
-show=source
-listfile="$(OUTDIR)\$(FILE50).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC50)
-lang=c
-nologo
-debug
<<

$(FILEOBJ51) : $(FILESRC51) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ51)
-show=source
-listfile="$(OUTDIR)\$(FILE51).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC51)
-lang=c
-nologo
-debug
<<

$(FILEOBJ52) : $(FILESRC52) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ52)
-show=source
-listfile="$(OUTDIR)\$(FILE52).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC52)
-lang=c
-nologo
-debug
<<

$(FILEOBJ53) : $(FILESRC53) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ53)
-show=source
-listfile="$(OUTDIR)\$(FILE53).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC53)
-lang=c
-nologo
-debug
<<

$(FILEOBJ54) : $(FILESRC54) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ54)
-show=source
-listfile="$(OUTDIR)\$(FILE54).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC54)
-lang=c
-nologo
-debug
<<

$(FILEOBJ55) : $(FILESRC55) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ55)
-show=source
-listfile="$(OUTDIR)\$(FILE55).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC55)
-lang=c
-nologo
-debug
<<

$(FILEOBJ56) : $(FILESRC56) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ56)
-show=source
-listfile="$(OUTDIR)\$(FILE56).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC56)
-lang=c
-nologo
-debug
<<

$(FILEOBJ57) : $(FILESRC57) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ57)
-show=source
-listfile="$(OUTDIR)\$(FILE57).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC57)
-lang=c
-nologo
-debug
<<

$(FILEOBJ58) : $(FILESRC58) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ58)
-show=source
-listfile="$(OUTDIR)\$(FILE58).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC58)
-lang=c
-nologo
-debug
<<

$(FILEOBJ59) : $(FILESRC59) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ59)
-show=source
-listfile="$(OUTDIR)\$(FILE59).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC59)
-lang=c
-nologo
-debug
<<

$(FILEOBJ60) : $(FILESRC60) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ60)
-show=source
-listfile="$(OUTDIR)\$(FILE60).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC60)
-lang=c
-nologo
-debug
<<

$(FILEOBJ61) : $(FILESRC61) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ61)
-show=source
-listfile="$(OUTDIR)\$(FILE61).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC61)
-lang=c
-nologo
-debug
<<

$(FILEOBJ62) : $(FILESRC62) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ62)
-show=source
-listfile="$(OUTDIR)\$(FILE62).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC62)
-lang=c
-nologo
-debug
<<

$(FILEOBJ63) : $(FILESRC63) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ63)
-show=source
-listfile="$(OUTDIR)\$(FILE63).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC63)
-lang=c
-nologo
-debug
<<

$(FILEOBJ64) : $(FILESRC64) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ64)
-show=source
-listfile="$(OUTDIR)\$(FILE64).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC64)
-lang=c
-nologo
-debug
<<

$(FILEOBJ65) : $(FILESRC65) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ65)
-show=source
-listfile="$(OUTDIR)\$(FILE65).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC65)
-lang=c
-nologo
-debug
<<

$(FILEOBJ66) : $(FILESRC66) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ66)
-show=source
-listfile="$(OUTDIR)\$(FILE66).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC66)
-lang=c
-nologo
-debug
<<

$(FILEOBJ67) : $(FILESRC67) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ67)
-show=source
-listfile="$(OUTDIR)\$(FILE67).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC67)
-lang=c
-nologo
-debug
<<

$(FILEOBJ68) : $(FILESRC68) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ68)
-show=source
-listfile="$(OUTDIR)\$(FILE68).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC68)
-lang=c
-nologo
-debug
<<

$(FILEOBJ69) : $(FILESRC69) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ69)
-show=source
-listfile="$(OUTDIR)\$(FILE69).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC69)
-lang=c
-nologo
-debug
<<

$(FILEOBJ70) : $(FILESRC70) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ70)
-show=source
-listfile="$(OUTDIR)\$(FILE70).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC70)
-lang=c
-nologo
-debug
<<

$(FILEOBJ71) : $(FILESRC71) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ71)
-show=source
-listfile="$(OUTDIR)\$(FILE71).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC71)
-lang=c
-nologo
-debug
<<

$(FILEOBJ72) : $(FILESRC72) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ72)
-show=source
-listfile="$(OUTDIR)\$(FILE72).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC72)
-lang=c
-nologo
-debug
<<

$(FILEOBJ73) : $(FILESRC73) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ73)
-show=source
-listfile="$(OUTDIR)\$(FILE73).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC73)
-lang=c
-nologo
-debug
<<

$(FILEOBJ74) : $(FILESRC74) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ74)
-show=source
-listfile="$(OUTDIR)\$(FILE74).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC74)
-lang=c
-nologo
-debug
<<

$(FILEOBJ75) : $(FILESRC75) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ75)
-show=source
-listfile="$(OUTDIR)\$(FILE75).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC75)
-lang=c
-nologo
-debug
<<

$(FILEOBJ76) : $(FILESRC76) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ76)
-show=source
-listfile="$(OUTDIR)\$(FILE76).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC76)
-lang=c
-nologo
-debug
<<

$(FILEOBJ77) : $(FILESRC77) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ77)
-show=source
-listfile="$(OUTDIR)\$(FILE77).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC77)
-lang=c
-nologo
-debug
<<

$(FILEOBJ78) : $(FILESRC78) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ78)
-show=source
-listfile="$(OUTDIR)\$(FILE78).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC78)
-lang=c
-nologo
-debug
<<

$(FILEOBJ79) : $(FILESRC79) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ79)
-show=source
-listfile="$(OUTDIR)\$(FILE79).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC79)
-lang=c
-nologo
-debug
<<

$(FILEOBJ80) : $(FILESRC80) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ80)
-show=source
-listfile="$(OUTDIR)\$(FILE80).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC80)
-lang=c
-nologo
-debug
<<

$(FILEOBJ81) : $(FILESRC81) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ81)
-show=source
-listfile="$(OUTDIR)\$(FILE81).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC81)
-lang=c
-nologo
-debug
<<

$(FILEOBJ82) : $(FILESRC82) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ82)
-show=source
-listfile="$(OUTDIR)\$(FILE82).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC82)
-lang=c
-nologo
-debug
<<

$(FILEOBJ83) : $(FILESRC83) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ83)
-show=source
-listfile="$(OUTDIR)\$(FILE83).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC83)
-lang=c
-nologo
-debug
<<

$(FILEOBJ84) : $(FILESRC84) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ84)
-show=source
-listfile="$(OUTDIR)\$(FILE84).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC84)
-lang=c
-nologo
-debug
<<

$(FILEOBJ85) : $(FILESRC85) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ85)
-show=source
-listfile="$(OUTDIR)\$(FILE85).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC85)
-lang=c
-nologo
-debug
<<

$(FILEOBJ86) : $(FILESRC86) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ86)
-show=source
-listfile="$(OUTDIR)\$(FILE86).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC86)
-lang=c
-nologo
-debug
<<

$(FILEOBJ87) : $(FILESRC87) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ87)
-show=source
-listfile="$(OUTDIR)\$(FILE87).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC87)
-lang=c
-nologo
-debug
<<

$(FILEOBJ88) : $(FILESRC88) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ88)
-show=source
-listfile="$(OUTDIR)\$(FILE88).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC88)
-lang=c
-nologo
-debug
<<

$(FILEOBJ89) : $(FILESRC89) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ89)
-show=source
-listfile="$(OUTDIR)\$(FILE89).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC89)
-lang=c
-nologo
-debug
<<

$(FILEOBJ90) : $(FILESRC90) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ90)
-show=source
-listfile="$(OUTDIR)\$(FILE90).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC90)
-lang=c
-nologo
-debug
<<

$(FILEOBJ91) : $(FILESRC91) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ91)
-show=source
-listfile="$(OUTDIR)\$(FILE91).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC91)
-lang=c
-nologo
-debug
<<

$(FILEOBJ92) : $(FILESRC92) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ92)
-show=source
-listfile="$(OUTDIR)\$(FILE92).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC92)
-lang=c
-nologo
-debug
<<

$(FILEOBJ93) : $(FILESRC93) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ93)
-show=source
-listfile="$(OUTDIR)\$(FILE93).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC93)
-lang=c
-nologo
-debug
<<

$(FILEOBJ94) : $(FILESRC94) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ94)
-show=source
-listfile="$(OUTDIR)\$(FILE94).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC94)
-lang=c
-nologo
-debug
<<

$(FILEOBJ95) : $(FILESRC95) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ95)
-show=source
-listfile="$(OUTDIR)\$(FILE95).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC95)
-lang=c
-nologo
-debug
<<

$(FILEOBJ96) : $(FILESRC96) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ96)
-show=source
-listfile="$(OUTDIR)\$(FILE96).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC96)
-lang=c
-nologo
-debug
<<

$(FILEOBJ97) : $(FILESRC97) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ97)
-show=source
-listfile="$(OUTDIR)\$(FILE97).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC97)
-lang=c
-nologo
-debug
<<

$(FILEOBJ98) : $(FILESRC98) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ98)
-show=source
-listfile="$(OUTDIR)\$(FILE98).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC98)
-lang=c
-nologo
-debug
<<

$(FILEOBJ99) : $(FILESRC99) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ99)
-show=source
-listfile="$(OUTDIR)\$(FILE99).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC99)
-lang=c
-nologo
-debug
<<

$(FILEOBJ100) : $(FILESRC100) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ100)
-show=source
-listfile="$(OUTDIR)\$(FILE100).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC100)
-lang=c
-nologo
-debug
<<

$(FILEOBJ101) : $(FILESRC101) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ101)
-show=source
-listfile="$(OUTDIR)\$(FILE101).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC101)
-lang=c
-nologo
-debug
<<

$(FILEOBJ102) : $(FILESRC102) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ102)
-show=source
-listfile="$(OUTDIR)\$(FILE102).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC102)
-lang=c
-nologo
-debug
<<

$(FILEOBJ103) : $(FILESRC103) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ103)
-show=source
-listfile="$(OUTDIR)\$(FILE103).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC103)
-lang=c
-nologo
-debug
<<

$(FILEOBJ104) : $(FILESRC104) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ104)
-show=source
-listfile="$(OUTDIR)\$(FILE104).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC104)
-lang=c
-nologo
-debug
<<

$(FILEOBJ105) : $(FILESRC105) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ105)
-show=source
-listfile="$(OUTDIR)\$(FILE105).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC105)
-lang=c
-nologo
-debug
<<

$(FILEOBJ106) : $(FILESRC106) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ106)
-show=source
-listfile="$(OUTDIR)\$(FILE106).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC106)
-lang=c
-nologo
-debug
<<

$(FILEOBJ107) : $(FILESRC107) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ107)
-show=source
-listfile="$(OUTDIR)\$(FILE107).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC107)
-lang=c
-nologo
-debug
<<

$(FILEOBJ108) : $(FILESRC108) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ108)
-show=source
-listfile="$(OUTDIR)\$(FILE108).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC108)
-lang=c
-nologo
-debug
<<

$(FILEOBJ109) : $(FILESRC109) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ109)
-show=source
-listfile="$(OUTDIR)\$(FILE109).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC109)
-lang=c
-nologo
-debug
<<

$(FILEOBJ110) : $(FILESRC110) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ110)
-show=source
-listfile="$(OUTDIR)\$(FILE110).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC110)
-lang=c
-nologo
-debug
<<

$(FILEOBJ111) : $(FILESRC111) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ111)
-show=source
-listfile="$(OUTDIR)\$(FILE111).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC111)
-lang=c
-nologo
-debug
<<

$(FILEOBJ112) : $(FILESRC112) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ112)
-show=source
-listfile="$(OUTDIR)\$(FILE112).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC112)
-lang=c
-nologo
-debug
<<

$(FILEOBJ113) : $(FILESRC113) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ113)
-show=source
-listfile="$(OUTDIR)\$(FILE113).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC113)
-lang=c
-nologo
-debug
<<

$(FILEOBJ114) : $(FILESRC114) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ114)
-show=source
-listfile="$(OUTDIR)\$(FILE114).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC114)
-lang=c
-nologo
-debug
<<

$(FILEOBJ115) : $(FILESRC115) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ115)
-show=source
-listfile="$(OUTDIR)\$(FILE115).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC115)
-lang=c
-nologo
-debug
<<

$(FILEOBJ116) : $(FILESRC116) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ116)
-show=source
-listfile="$(OUTDIR)\$(FILE116).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC116)
-lang=c
-nologo
-debug
<<

$(FILEOBJ117) : $(FILESRC117) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ117)
-show=source
-listfile="$(OUTDIR)\$(FILE117).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC117)
-lang=c
-nologo
-debug
<<

$(FILEOBJ118) : $(FILESRC118) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ118)
-show=source
-listfile="$(OUTDIR)\$(FILE118).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC118)
-lang=c
-nologo
-debug
<<

$(FILEOBJ119) : $(FILESRC119) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ119)
-show=source
-listfile="$(OUTDIR)\$(FILE119).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC119)
-lang=c
-nologo
-debug
<<

$(FILEOBJ120) : $(FILESRC120) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ120)
-show=source
-listfile="$(OUTDIR)\$(FILE120).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC120)
-lang=c
-nologo
-debug
<<

$(FILEOBJ121) : $(FILESRC121) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ121)
-show=source
-listfile="$(OUTDIR)\$(FILE121).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC121)
-lang=c
-nologo
-debug
<<

$(FILEOBJ122) : $(FILESRC122) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ122)
-show=source
-listfile="$(OUTDIR)\$(FILE122).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC122)
-lang=c
-nologo
-debug
<<

$(FILEOBJ123) : $(FILESRC123) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ123)
-show=source
-listfile="$(OUTDIR)\$(FILE123).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC123)
-lang=c
-nologo
-debug
<<

$(FILEOBJ124) : $(FILESRC124) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ124)
-show=source
-listfile="$(OUTDIR)\$(FILE124).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC124)
-lang=c
-nologo
-debug
<<

$(FILEOBJ125) : $(FILESRC125) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ125)
-show=source
-listfile="$(OUTDIR)\$(FILE125).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC125)
-lang=c
-nologo
-debug
<<

$(FILEOBJ126) : $(FILESRC126) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ126)
-show=source
-listfile="$(OUTDIR)\$(FILE126).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC126)
-lang=c
-nologo
-debug
<<

$(FILEOBJ127) : $(FILESRC127) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ127)
-show=source
-listfile="$(OUTDIR)\$(FILE127).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC127)
-lang=c
-nologo
-debug
<<

$(FILEOBJ128) : $(FILESRC128) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ128)
-show=source
-listfile="$(OUTDIR)\$(FILE128).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC128)
-lang=c
-nologo
-debug
<<

$(FILEOBJ129) : $(FILESRC129) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ129)
-show=source
-listfile="$(OUTDIR)\$(FILE129).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC129)
-lang=c
-nologo
-debug
<<

$(FILEOBJ130) : $(FILESRC130) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ130)
-show=source
-listfile="$(OUTDIR)\$(FILE130).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC130)
-lang=c
-nologo
-debug
<<

$(FILEOBJ131) : $(FILESRC131) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ131)
-show=source
-listfile="$(OUTDIR)\$(FILE131).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC131)
-lang=c
-nologo
-debug
<<

$(FILEOBJ132) : $(FILESRC132) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ132)
-show=source
-listfile="$(OUTDIR)\$(FILE132).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC132)
-lang=c
-nologo
-debug
<<

$(FILEOBJ133) : $(FILESRC133) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ133)
-show=source
-listfile="$(OUTDIR)\$(FILE133).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC133)
-lang=c
-nologo
-debug
<<

$(FILEOBJ134) : $(FILESRC134) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ134)
-show=source
-listfile="$(OUTDIR)\$(FILE134).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC134)
-lang=c
-nologo
-debug
<<

$(FILEOBJ135) : $(FILESRC135) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ135)
-show=source
-listfile="$(OUTDIR)\$(FILE135).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC135)
-lang=c
-nologo
-debug
<<

$(FILEOBJ136) : $(FILESRC136) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ136)
-show=source
-listfile="$(OUTDIR)\$(FILE136).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC136)
-lang=c
-nologo
-debug
<<

$(FILEOBJ137) : $(FILESRC137) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ137)
-show=source
-listfile="$(OUTDIR)\$(FILE137).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC137)
-lang=c
-nologo
-debug
<<

$(FILEOBJ138) : $(FILESRC138) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ138)
-show=source
-listfile="$(OUTDIR)\$(FILE138).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC138)
-lang=c
-nologo
-debug
<<

$(FILEOBJ139) : $(FILESRC139) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ139)
-show=source
-listfile="$(OUTDIR)\$(FILE139).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC139)
-lang=c
-nologo
-debug
<<

$(FILEOBJ140) : $(FILESRC140) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ140)
-show=source
-listfile="$(OUTDIR)\$(FILE140).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC140)
-lang=c
-nologo
-debug
<<

$(FILEOBJ141) : $(FILESRC141) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ141)
-show=source
-listfile="$(OUTDIR)\$(FILE141).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC141)
-lang=c
-nologo
-debug
<<

$(FILEOBJ142) : $(FILESRC142) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ142)
-show=source
-listfile="$(OUTDIR)\$(FILE142).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC142)
-lang=c
-nologo
-debug
<<

$(FILEOBJ143) : $(FILESRC143) $(SHCC02_DEP)
	"$(SH_EXEDIR)\$(SHCC02_EXE)" -subcommand=<<
-cpu=sh3
-include="$(OSDIR)\FX\include","$(APPDIR)"
-objectfile=$(FILEOBJ143)
-show=source
-listfile="$(OUTDIR)\$(FILE143).lst"
-size
-noinline
-chgincpath
-errorpath
$(FILESRC143)
-lang=c
-nologo
-debug
<<

!MESSAGE
!MESSAGE Executing Hitachi OptLinker04 phase
!MESSAGE

"$(OUTDIR)\$(RFILE).bin" : $(USERALLOBJ) $(SHLINK04_DEP2) $(SHLINK04_DEP)
	"$(SH_EXEDIR)\$(SHLINK04_EXE)" -subcommand=<<
noprelink
sdebug
rom D=R
nomessage 
list "$(OUTDIR)\$(RFILE).map"
show symbol
nooptimize
start P_TOP,P,C,D,C$VTBL,C$INIT/0300200,B_BR_Size,B,R/08100000
fsymbol P
nologo
input $(USERALLOBJ)
input $(SHLINK04_DEP2)
library $(SHLINK04_DEP)
output "$(OUTDIR)\$(RFILE).abs"
-nomessage=1100
end
input "$(OUTDIR)\$(RFILE).abs"
form binary
output "$(OUTDIR)\$(RFILE).bin"
exit
<<

