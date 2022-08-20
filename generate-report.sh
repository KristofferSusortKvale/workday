#!/bin/sh

# Defining reportfile

reportfile="$HOME/Desktop/report.md"

if [ $1 ];
then
reportfile=$1
fi


# Creating and adding header to report file

date=`date +"%d/%b/%Y"`
echo "# Workday $date" >> $reportfile


# Creating file variables

goodfile="$HOME/.workday/good.txt"
badfile="$HOME/.workday/bad.txt"
ideafile="$HOME/.workday/idea.txt"
problemfile="$HOME/.workday/problem.txt"


# Generating the key numbers part of the report

echo "## Key Numbers" >> $reportfile

# Counting and adding number of "good" notes

good=0

if [ -f $goodfile ];
then
while read line
do
((good++))
done < $goodfile
fi

echo "Good: $good" >> $reportfile

# Counting and adding number of "bad" notes

bad=0

if [ -f $badfile ];
then
while read line
do
((bad++))
done < $badfile
fi

echo "Bad: $bad" >> $reportfile

# Counting and adding number of "idea" notes

idea=0

if [ -f $ideafile ];
then
while read line
do
((idea++))
done < $ideafile
fi

echo "Idea: $idea" >> $reportfile

# Counting and adding number of "problem" notes

problem=0

if [ -f $problemfile ];
then
while read line
do
((problem++))
done < $problemfile
fi

echo "Problem: $problem" >> $reportfile

echo "" >> $reportfile

# Adding section for "Good" notes if any exist

if [ -f $goodfile ];
then
echo "## Good" >> $reportfile

while read line
do
echo $line >> $reportfile
done < $goodfile
echo "" >> $reportfile
fi

# Adding section for "Bad" notes if any exist

if [ -f $badfile ];
then
echo "## Bad" >> $reportfile

while read line
do
echo $line >> $reportfile
done < $badfile
echo "" >> $reportfile
fi

# Adding section for "Idea" notes if any exist

if [ -f $ideafile ];
then
echo "## Ideas" >> $reportfile

while read line
do
echo $line >> $reportfile
done < $ideafile
echo "" >> $reportfile
fi

# Adding section for "Problem" notes if any exist

if [ -f $problemfile ];
then
echo "## Problems" >> $reportfile

while read line
do
echo $line >> $reportfile
done < $problemfile
echo "" >> $reportfile
fi

# Removing note files if they exist

if [ -f $goodfile ];
then
rm $goodfile
fi

if [ -f $badfile ];
then
rm $badfile
fi

if [ -f $ideafile ];
then
rm $ideafile
fi

if [ -f $problemfile ];
then
rm $problemfile
fi
