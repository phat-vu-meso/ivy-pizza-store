[Ivy]
186C4B5A66218898 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MakeAnOrderProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdInit f0 '' #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdExitEnd f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @GridStep f6 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @PushWFArc f7 '' #zField
>Proto Ms0 Ms0 MakeAnOrderProcess #zField
Ms0 f0 guid 186C4B5A668A28D7 #txt
Ms0 f0 method start() #txt
Ms0 f0 inParameterDecl '<> param;' #txt
Ms0 f0 outParameterDecl '<> result;' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -28 15 #rect
Ms0 f0 @|UdInitIcon #fIcon
Ms0 f1 387 51 26 26 0 12 #rect
Ms0 f1 @|UdProcessEndIcon #fIcon
Ms0 f3 guid 186C4B5A66FC226F #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 147 26 26 -14 15 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f4 211 147 26 26 0 12 #rect
Ms0 f4 @|UdExitEndIcon #fIcon
Ms0 f5 109 160 211 160 #arcP
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import ivy.pizza.store.beans.ProductBean;
ProductBean bean = new ProductBean();
in.pizzaList = bean.getProducts();
in.drinkList = bean.getProducts();' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get all products</name>
    </language>
</elementInfo>
' #txt
Ms0 f6 192 42 112 44 -41 -8 #rect
Ms0 f6 @|StepIcon #fIcon
Ms0 f2 109 64 192 64 #arcP
Ms0 f7 304 64 387 64 #arcP
>Proto Ms0 .type ivy.pizza.store.MakeAnOrder.MakeAnOrderData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f3 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f6 mainIn #connect
Ms0 f6 mainOut f7 tail #connect
Ms0 f7 head f1 mainIn #connect
