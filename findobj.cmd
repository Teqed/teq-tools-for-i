CMD PROMPT('Find Object')
/* Object name */
PARM KWD(obj) TYPE(*CHAR) LEN(10) +
    PROMPT('Object name')
/* Library qualifer */
PARM KWD(lib) TYPE(*CHAR) LEN(10) +
    PROMPT('Library qualifer')
/* Type of object ex. *FILE */
PARM KWD(type) TYPE(*CHAR) LEN(10) +
    PROMPT('Type of object')
/* The return value for calling program */
PARM KWD(rtn) TYPE(*LGL) +
    RTNVAL(*YES)
