.POSIX :

.SUFFIXES :
A := .jar
J := .java
C := .class
.SUFFIXES : $A $C $J .bte .html

JFLAGS	:= -classpath ../../..
JAVA	:= java $(JFLAGS)
JAVAC	:= javac $(JFLAGS) -Xlint:deprecation -Xlint:unchecked
JAVADOC	:= javadoc $(JFLAGS)

$J$C:
	${JAVAC} $*$J

CLASSES := GameOverException$C Barrel$C BarrelProducer$C EditorCanvas$C	\
	Editor$C HighScoreList$C HighScore$C Creature$C Lad$C Level$C \
	LadderCanvas$C Ladder$C

all : pack

run : compile
	${JAVA} com.Ostermiller.Ladder.Ladder

clean :
	-rm -rf *$C ./com

distclean : clean
	rm -rf core *.bak ladder$A

compile : ${CLASSES}

pack : compile
	mkdir -p com/Ostermiller/Ladder
	cp Makefile Ladder.mf *$C *$J *.lvl *.ini README.md ladder_screen_1.png com/Ostermiller/Ladder
	jar -v -c -m Ladder.mf -f ladder$A com/

testjar : pack clean
	${JAVA} -jar ladder$A
