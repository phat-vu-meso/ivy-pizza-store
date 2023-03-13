[Ivy]
186D8F635F87C166 7.5.0 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @UdEvent f3 '' #zField
Ls0 @UdExitEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
Ls0 @UdMethod f6 '' #zField
Ls0 @GridStep f7 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @UdExitEnd f11 '' #zField
Ls0 @GridStep f15 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @Alternative f16 '' #zField
Ls0 @PushWFArc f17 '' #zField
Ls0 @PushWFArc f18 '' #zField
Ls0 @PushWFArc f19 '' #zField
Ls0 @GridStep f9 '' #zField
Ls0 @PushWFArc f13 '' #zField
Ls0 @Alternative f21 '' #zField
Ls0 @PushWFArc f10 '' #zField
Ls0 @PushWFArc f12 '' #zField
Ls0 @PushWFArc f14 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 186D8F63601A5F76 #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -28 15 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f1 515 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f3 guid 186D8F63611552EC #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 75 347 26 26 -14 15 #rect
Ls0 f3 @|UdEventIcon #fIcon
Ls0 f4 203 347 26 26 0 12 #rect
Ls0 f4 @|UdExitEndIcon #fIcon
Ls0 f5 101 360 203 360 #arcP
Ls0 f6 guid 186D8FF3B2FC8016 #txt
Ls0 f6 method doLogin() #txt
Ls0 f6 inParameterDecl '<> param;' #txt
Ls0 f6 outParameterDecl '<> result;' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doLogin()</name>
    </language>
</elementInfo>
' #txt
Ls0 f6 75 227 26 26 -23 15 #rect
Ls0 f6 @|UdMethodIcon #fIcon
Ls0 f7 actionTable 'out=in;
' #txt
Ls0 f7 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import ch.ivyteam.ivy.security.IUser;

in.isUserAuthenticated = ivy.session.loginSessionUser(in.username, in.password);
out.password = null;' #txt
Ls0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authenticate user</name>
    </language>
</elementInfo>
' #txt
Ls0 f7 184 218 112 44 -45 -8 #rect
Ls0 f7 @|StepIcon #fIcon
Ls0 f8 101 240 184 240 #arcP
Ls0 f11 363 147 26 26 0 12 #rect
Ls0 f11 @|UdExitEndIcon #fIcon
Ls0 f15 actionTable 'out=in;
' #txt
Ls0 f15 actionCode 'in.isUserAuthenticated = ivy.session.getSessionUser() != null;' #txt
Ls0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user already logged in?</name>
    </language>
</elementInfo>
' #txt
Ls0 f15 184 42 128 44 -60 -8 #rect
Ls0 f15 @|StepIcon #fIcon
Ls0 f2 109 64 184 64 #arcP
Ls0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is Logged in</name>
    </language>
</elementInfo>
' #txt
Ls0 f16 360 48 32 32 -30 -41 #rect
Ls0 f16 @|AlternativeIcon #fIcon
Ls0 f17 312 64 360 64 #arcP
Ls0 f18 expr in #txt
Ls0 f18 outCond !in.isUserAuthenticated #txt
Ls0 f18 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
    </language>
</elementInfo>
' #txt
Ls0 f18 392 64 515 64 #arcP
Ls0 f18 0 0.42276422764227645 0 -7 #arcLabel
Ls0 f19 expr in #txt
Ls0 f19 outCond in.isUserAuthenticated #txt
Ls0 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
    </language>
</elementInfo>
' #txt
Ls0 f19 376 80 376 147 #arcP
Ls0 f19 0 0.19554352317963905 16 1 #arcLabel
Ls0 f9 actionTable 'out=in;
' #txt
Ls0 f9 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Login failed. Check your credential", "");
FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
    </language>
</elementInfo>
' #txt
Ls0 f9 472 218 112 44 -28 -8 #rect
Ls0 f9 @|StepIcon #fIcon
Ls0 f13 528 218 528 77 #arcP
Ls0 f21 360 224 32 32 0 16 #rect
Ls0 f21 @|AlternativeIcon #fIcon
Ls0 f10 296 240 360 240 #arcP
Ls0 f12 expr in #txt
Ls0 f12 outCond in.isUserAuthenticated #txt
Ls0 f12 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
    </language>
</elementInfo>
' #txt
Ls0 f12 376 224 376 173 #arcP
Ls0 f12 0 0.45098039215686275 -15 0 #arcLabel
Ls0 f14 expr in #txt
Ls0 f14 outCond !in.isUserAuthenticated #txt
Ls0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
    </language>
</elementInfo>
' #txt
Ls0 f14 392 240 472 240 #arcP
Ls0 f14 0 0.4125 0 -8 #arcLabel
>Proto Ls0 .type ivy.pizza.store.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f3 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
Ls0 f6 mainOut f8 tail #connect
Ls0 f8 head f7 mainIn #connect
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f15 mainIn #connect
Ls0 f15 mainOut f17 tail #connect
Ls0 f17 head f16 in #connect
Ls0 f16 out f18 tail #connect
Ls0 f18 head f1 mainIn #connect
Ls0 f16 out f19 tail #connect
Ls0 f19 head f11 mainIn #connect
Ls0 f9 mainOut f13 tail #connect
Ls0 f13 head f1 mainIn #connect
Ls0 f7 mainOut f10 tail #connect
Ls0 f10 head f21 in #connect
Ls0 f21 out f12 tail #connect
Ls0 f12 head f11 mainIn #connect
Ls0 f21 out f14 tail #connect
Ls0 f14 head f9 mainIn #connect
