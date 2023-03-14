[Ivy]
186D02E8856A19F3 7.5.0 #module
>Proto >Proto Collection #zClass
Hs0 HandleOrderProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @UdInit f0 '' #zField
Hs0 @UdProcessEnd f1 '' #zField
Hs0 @UdEvent f3 '' #zField
Hs0 @UdExitEnd f4 '' #zField
Hs0 @PushWFArc f5 '' #zField
Hs0 @GridStep f6 '' #zField
Hs0 @PushWFArc f2 '' #zField
Hs0 @PushWFArc f7 '' #zField
Hs0 @UdMethod f8 '' #zField
Hs0 @GridStep f9 '' #zField
Hs0 @PushWFArc f10 '' #zField
Hs0 @PushWFArc f11 '' #zField
Hs0 @UdMethod f12 '' #zField
Hs0 @GridStep f13 '' #zField
Hs0 @PushWFArc f14 '' #zField
Hs0 @UdMethod f16 '' #zField
Hs0 @GridStep f17 '' #zField
Hs0 @PushWFArc f18 '' #zField
Hs0 @PushWFArc f15 '' #zField
Hs0 @PushWFArc f19 '' #zField
>Proto Hs0 Hs0 HandleOrderProcess #zField
Hs0 f0 guid 186D02E887055859 #txt
Hs0 f0 method start() #txt
Hs0 f0 inParameterDecl '<> param;' #txt
Hs0 f0 inParameterMapAction 'out.loggedInUser=ivy.session.getSessionUser();
' #txt
Hs0 f0 outParameterDecl '<> result;' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 83 219 26 26 -19 15 #rect
Hs0 f0 @|UdInitIcon #fIcon
Hs0 f1 475 219 26 26 0 12 #rect
Hs0 f1 @|UdProcessEndIcon #fIcon
Hs0 f3 guid 186D02E887C7A1F7 #txt
Hs0 f3 actionTable 'out=in;
' #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Hs0 f3 67 523 26 26 -14 15 #rect
Hs0 f3 @|UdEventIcon #fIcon
Hs0 f4 203 523 26 26 0 12 #rect
Hs0 f4 @|UdExitEndIcon #fIcon
Hs0 f5 93 536 203 536 #arcP
Hs0 f6 actionTable 'out=in;
' #txt
Hs0 f6 actionCode 'import ivy.pizza.store.beans.OrderBean;

OrderBean bean = new OrderBean();
in.pendingOrders = bean.getOrders(in.loggedInUser);
in.orderType = bean.getOrderType(in.loggedInUser);' #txt
Hs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get all orders from correponding logged in role</name>
    </language>
</elementInfo>
' #txt
Hs0 f6 168 210 256 44 -120 -8 #rect
Hs0 f6 @|StepIcon #fIcon
Hs0 f2 109 232 168 232 #arcP
Hs0 f7 424 232 475 232 #arcP
Hs0 f8 guid 186D8C8BE7ADDE8D #txt
Hs0 f8 method confirmOrder(String,String) #txt
Hs0 f8 inParameterDecl '<String orderId,String orderStatus> param;' #txt
Hs0 f8 inParameterMapAction 'out.orderId=param.orderId;
out.orderStatus=param.orderStatus;
' #txt
Hs0 f8 outParameterDecl '<> result;' #txt
Hs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirm order</name>
    </language>
</elementInfo>
' #txt
Hs0 f8 83 315 26 26 -23 15 #rect
Hs0 f8 @|UdMethodIcon #fIcon
Hs0 f9 actionTable 'out=in;
' #txt
Hs0 f9 actionCode 'import ivy.pizza.store.beans.OrderBean;

OrderBean bean = new OrderBean();
bean.confirmOrder(in.orderId, in.orderStatus);' #txt
Hs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Order</name>
    </language>
</elementInfo>
' #txt
Hs0 f9 160 306 112 44 -37 -8 #rect
Hs0 f9 @|StepIcon #fIcon
Hs0 f10 109 328 160 328 #arcP
Hs0 f11 272 328 296 254 #arcP
Hs0 f11 1 296 328 #addKink
Hs0 f11 0 0.9511467586831148 0 0 #arcLabel
Hs0 f12 guid 186D8E68A68F4E3D #txt
Hs0 f12 method cancelOrder(String) #txt
Hs0 f12 inParameterDecl '<String orderId> param;' #txt
Hs0 f12 inParameterMapAction 'out.orderId=param.orderId;
' #txt
Hs0 f12 outParameterDecl '<> result;' #txt
Hs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel order</name>
    </language>
</elementInfo>
' #txt
Hs0 f12 75 131 26 26 -23 15 #rect
Hs0 f12 @|UdMethodIcon #fIcon
Hs0 f13 actionTable 'out=in;
' #txt
Hs0 f13 actionCode 'import ivy.pizza.store.beans.OrderBean;

OrderBean bean = new OrderBean();
bean.cancelOrder(in.orderId);' #txt
Hs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Cancel order</name>
    </language>
</elementInfo>
' #txt
Hs0 f13 152 122 112 44 -33 -8 #rect
Hs0 f13 @|StepIcon #fIcon
Hs0 f14 101 144 152 144 #arcP
Hs0 f16 guid 186D94CED13563A2 #txt
Hs0 f16 method doLogout() #txt
Hs0 f16 inParameterDecl '<> param;' #txt
Hs0 f16 outParameterDecl '<> result;' #txt
Hs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doLogout()</name>
    </language>
</elementInfo>
' #txt
Hs0 f16 67 419 26 26 -23 15 #rect
Hs0 f16 @|UdMethodIcon #fIcon
Hs0 f17 actionTable 'out=in;
' #txt
Hs0 f17 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();
currentSession.logoutSessionUser();' #txt
Hs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Log out</name>
    </language>
</elementInfo>
' #txt
Hs0 f17 160 410 112 44 -19 -8 #rect
Hs0 f17 @|StepIcon #fIcon
Hs0 f18 93 432 160 432 #arcP
Hs0 f15 264 144 296 210 #arcP
Hs0 f15 1 296 144 #addKink
Hs0 f15 0 0.8565296650516696 0 0 #arcLabel
Hs0 f19 216 454 216 523 #arcP
>Proto Hs0 .type ivy.pizza.store.HandleOrder.HandleOrderData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
Hs0 f3 mainOut f5 tail #connect
Hs0 f5 head f4 mainIn #connect
Hs0 f0 mainOut f2 tail #connect
Hs0 f2 head f6 mainIn #connect
Hs0 f6 mainOut f7 tail #connect
Hs0 f7 head f1 mainIn #connect
Hs0 f8 mainOut f10 tail #connect
Hs0 f10 head f9 mainIn #connect
Hs0 f9 mainOut f11 tail #connect
Hs0 f11 head f6 mainIn #connect
Hs0 f12 mainOut f14 tail #connect
Hs0 f14 head f13 mainIn #connect
Hs0 f16 mainOut f18 tail #connect
Hs0 f18 head f17 mainIn #connect
Hs0 f13 mainOut f15 tail #connect
Hs0 f15 head f6 mainIn #connect
Hs0 f17 mainOut f19 tail #connect
Hs0 f19 head f4 mainIn #connect
