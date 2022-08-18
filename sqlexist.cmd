CMD PROMPT('SQL Exist')
/* Object name */
PARM KWD(obj) TYPE(*CHAR) LEN(10) +
    PROMPT('Table name')
/* Library qualifer */
PARM KWD(lib) TYPE(*CHAR) LEN(10) +
    PROMPT('Library qualifer')
/* Type of object ex. *FILE */
PARM KWD(col0) TYPE(*CHAR) LEN(10) +
    PROMPT('WHERE Column 0')
PARM KWD(val0) TYPE(*CHAR) LEN(10) +
    PROMPT('WHERE Value 0')
PARM KWD(col1) TYPE(*CHAR) LEN(10) +
    PROMPT('WHERE Column 1')
PARM KWD(val1) TYPE(*CHAR) LEN(10) +
    PROMPT('WHERE Value 1')
PARM KWD(col2) TYPE(*CHAR) LEN(10) +
    PROMPT('WHERE Column 2')
PARM KWD(val2) TYPE(*CHAR) LEN(10) +
    PROMPT('WHERE Value 2')
/* The return value for calling program */
PARM KWD(rtn) TYPE(*LGL) +
    RTNVAL(*YES)
