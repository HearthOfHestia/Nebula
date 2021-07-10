# ABOUT

This is Hearth of Hestia's integration of the DMAPI for TGSv4 Control.

Note that without the topic modifications in this project's World/Topic (line 115), attributes for TGS are **READ ONLY**. 

Please note that any modification to World/Topic carries the risk of exposing the server to an outside attack, it is **highly suggested** to ensure that whatever implementation of the topic modification you use that you ensure it is both rate-limited and whitelisted to only allow LOCALHOST connections, in addition ensuring that whatever instance you're using to host the TGS control service is also secured from external tampering through unintentional means (i.e TGS control port).