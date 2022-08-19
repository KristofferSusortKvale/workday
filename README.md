# Workday
**Quick notes during your work day, with an automatically generated report for your work day when you end it**

## Commands (workday <>)
**start** - Starts a new workday. _If another workday has not been stopped an error is shown_. The command creates a directory for work notes.
**create <type> <message>** - Creates a work note of < _type_ > with content < _message_ > in the current workday directory. _If no workday is active, it throws an error._
**end** - Ends the current workday, generates a report based on notes in current workday directory, and then cleans up the current workday directory.
  
