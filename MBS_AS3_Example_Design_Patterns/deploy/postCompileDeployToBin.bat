@ECHO --------------------------------------------------------------------------
@ECHO Processing Deployment
@ECHO --------------------------------------------------------------------------
@ECHO OFF

CALL setMyPath.bat

MOVE %projectDirectory%MementoExample.swf %deployToDirectory%MementoExample.swf
MOVE %projectDirectory%ImageProxyExample.swf %deployToDirectory%proxy\ImageProxyExample.swf


@ECHO -----------------------------------------------------
@ECHO Deployment complete. Thank you for using me.
@ECHO -----------------------------------------------------
@pause