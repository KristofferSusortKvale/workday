# Workday
** Quick notes during your work day, with an automatically generated report for your work day when you end it **

## Commands (workday <>)
** start ** - Starts a new workday. * If another workday has not been stopped an error is shown *. The command creates a directory for work notes.
** create <type> <message> ** - Creates a work note of < * type * > with content < * message * > in the current workday directory. * If no workday is active, it throws an error. *
** end ** - Ends the current workday, generates a report based on notes in current workday directory, and then cleans up the current workday directory.
  
