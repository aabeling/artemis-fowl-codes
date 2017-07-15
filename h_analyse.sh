#!/bin/bash

#
# Häufigkeitsanalyse
# ==================
# Bestimmt alle Wörter (in diesem Fall Symbole)
# in einem Text und ermittelt deren
# Häufigkeit
#
# Benutzung: h_analyse.sh <dateiname>

# grep -o -E '\w+' - | sort -u

# from http://www.cs.upc.edu/~padro/Unixforpoets.pdf
#tr -sc ´[A-Z][a-z]´ ´[\012*]´ < $1 | sort | uniq -c

tr -s [:blank:] '\n' < $1 | sort|uniq -c|sort -gr
