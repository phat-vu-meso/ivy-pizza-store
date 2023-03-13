[Ivy]
186D02953F380747 7.5.0 #module
>Proto >Proto Collection #zClass
Hr0 HandleOrder Big #zClass
Hr0 B #cInfo
Hr0 #process
Hr0 @TextInP .type .type #zField
Hr0 @TextInP .processKind .processKind #zField
Hr0 @TextInP .xml .xml #zField
Hr0 @TextInP .responsibility .responsibility #zField
Hr0 @StartRequest f0 '' #zField
Hr0 @EndTask f1 '' #zField
Hr0 @UserDialog f3 '' #zField
Hr0 @PushWFArc f4 '' #zField
Hr0 @UserDialog f5 '' #zField
Hr0 @PushWFArc f2 '' #zField
Hr0 @PushWFArc f6 '' #zField
>Proto Hr0 Hr0 HandleOrder #zField
Hr0 f0 outLink start.ivp #txt
Hr0 f0 inParamDecl '<> param;' #txt
Hr0 f0 requestEnabled true #txt
Hr0 f0 triggerEnabled false #txt
Hr0 f0 callSignature start() #txt
Hr0 f0 caseData businessCase.attach=true #txt
Hr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Handle order</name>
    </language>
</elementInfo>
' #txt
Hr0 f0 @C|.responsibility Everybody #txt
Hr0 f0 81 49 30 30 -29 17 #rect
Hr0 f0 @|StartRequestIcon #fIcon
Hr0 f1 705 49 30 30 0 15 #rect
Hr0 f1 @|EndIcon #fIcon
Hr0 f3 dialogId ivy.pizza.store.HandleOrder #txt
Hr0 f3 startMethod start() #txt
Hr0 f3 requestActionDecl '<> param;' #txt
Hr0 f3 responseMappingAction 'out=in;
' #txt
Hr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Handle orders by receptionlis or delivery people</name>
    </language>
</elementInfo>
' #txt
Hr0 f3 408 42 256 44 -122 -8 #rect
Hr0 f3 @|UserDialogIcon #fIcon
Hr0 f4 664 64 705 64 #arcP
Hr0 f5 dialogId ivy.pizza.store.Login #txt
Hr0 f5 startMethod start() #txt
Hr0 f5 requestActionDecl '<> param;' #txt
Hr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login</name>
    </language>
</elementInfo>
' #txt
Hr0 f5 200 42 112 44 -14 -8 #rect
Hr0 f5 @|UserDialogIcon #fIcon
Hr0 f2 111 64 200 64 #arcP
Hr0 f6 312 64 408 64 #arcP
>Proto Hr0 .type ivy.pizza.store.Data #txt
>Proto Hr0 .processKind NORMAL #txt
>Proto Hr0 0 0 32 24 18 0 #rect
>Proto Hr0 @|BIcon #fIcon
Hr0 f3 mainOut f4 tail #connect
Hr0 f4 head f1 mainIn #connect
Hr0 f0 mainOut f2 tail #connect
Hr0 f2 head f5 mainIn #connect
Hr0 f5 mainOut f6 tail #connect
Hr0 f6 head f3 mainIn #connect
