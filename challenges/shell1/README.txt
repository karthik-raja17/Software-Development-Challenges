    -----------====== The Story  ======--------------
 
You spent months of hard work preparing a file containing a list 
of all the movies ever made with their corresponding director. 
You saved your work in a csv file with the following format:

 # Name of the Director, Name of the Movie, Year, Comment

An example is in the file movie_list.csv

Unfortunately, as you may have noticed, some fields contain the 
delimiter character (",") and this makes the entire file very
hard to parse. 
Luckily, the when the comma appears inside a field, it is
always in a quoted string.

  -----------====== The Challenge  ======--------------
 
To fix the problem, you want to process the file and change the field 
separator from "," to "|".
The file will then look like:

  # Director| Movie Title| Year| Comment
  Ethan Coen| No Country for Old Men| 2007| none
  Ethan Coen| "O Brother, Where Art Thou?"| 2000| none
  Ethan Coen| The Big Lebowski| 1998| "uncredited (with his brother, Joel)"
  Quentin Tarantino| Kill Bill: Vol. 1| October 2003| none
  Quentin Tarantino| Four Rooms| 1995| segment "The Man from Hollywood"

 -----------====== Submission  ======--------------

Submit a text file containing in the first line your command
as you would write it on the shell. Your command will be tested invoking:

$> cat movie_list.csv | sh yourfile 



