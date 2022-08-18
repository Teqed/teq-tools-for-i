# teq-tools-for-i
This repository is for storing some tools I've created for IBM Power i (AS400) systems to make common tasks more trivial.

To-do includes converting some unorganized notes and code snippets I have into some generically useful reference programs or scripts. Until then, this repo may be fairly empty.

Some of these tools may be intended for interfacing with RPG or CL programs from batch jobs, i.e. SSH.

# findobj.clle
Accepts parameters for the `CHKOBJ OBJ(&lib/&obj) OBJTYPE(&type)` command, monitors for messages, and returns a value based on the result.

# sqlexist.clle
CL procedure for checking the existence of SQL records using `RUNSQL SQL(&statement)`.

Creates a temporary view and writes a record if the selection criteria finds any results, then reads the view to see if any SQL records were found.

Normally, using RUNSQL in CL doesn't give you access to any of the results, so writing to a temporay view and using RCVF is a roundabout way of accomplishing what we're looking for.

I'm not especially pleased with this method, especially since CL requires physical files to exist *at compile time* so that they can retrieve their columns and assign them as variables. This means that (unless you get creative) you can't use files that you want to exist in QTEMP, and you have to create (potentially empty) physical files in your development environment to compile the program, which may be dropped again every time you run the program.

Instead of continuing down this route of creating wrappers for RUNSQL in CL, I'm exploring some other methods of accessing DB2 on IBMi, like ODBC, which may be seen in other projects.

# testpgm.clle
Program that tests other programs that use return values, by using `CALLPRC PRC(&procedure) PARM(&parameters)`. Provides an in-between for procedures that can't be run interactively, but allows changing the variables as you might like. At any given commit these parameters might be tweaked for testing specific programs.
