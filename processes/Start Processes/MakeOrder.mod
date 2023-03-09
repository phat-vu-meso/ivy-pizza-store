[Ivy]
186C4B08C8C23310 7.5.0 #module
>Proto >Proto Collection #zClass
Mr0 MakeOrder Big #zClass
Mr0 B #cInfo
Mr0 #process
Mr0 @TextInP .type .type #zField
Mr0 @TextInP .processKind .processKind #zField
Mr0 @TextInP .xml .xml #zField
Mr0 @TextInP .responsibility .responsibility #zField
Mr0 @StartRequest f0 '' #zField
Mr0 @EndTask f1 '' #zField
Mr0 @UserDialog f3 '' #zField
Mr0 @PushWFArc f2 '' #zField
Mr0 @PushWFArc f4 '' #zField
>Proto Mr0 Mr0 MakeOrder #zField
Mr0 f0 outLink start.ivp #txt
Mr0 f0 inParamDecl '<> param;' #txt
Mr0 f0 requestEnabled true #txt
Mr0 f0 triggerEnabled false #txt
Mr0 f0 callSignature start() #txt
Mr0 f0 caseData businessCase.attach=true #txt
Mr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Mr0 f0 @C|.responsibility Everybody #txt
Mr0 f0 41 49 30 30 -20 17 #rect
Mr0 f0 @|StartRequestIcon #fIcon
Mr0 f1 337 49 30 30 0 15 #rect
Mr0 f1 @|EndIcon #fIcon
Mr0 f3 dialogId ivy.pizza.store.MakeAnOrder #txt
Mr0 f3 startMethod start() #txt
Mr0 f3 requestActionDecl '<> param;' #txt
Mr0 f3 responseMappingAction 'out=in;
' #txt
Mr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Make an order</name>
    </language>
</elementInfo>
' #txt
Mr0 f3 168 42 112 44 -37 -8 #rect
Mr0 f3 @|UserDialogIcon #fIcon
Mr0 f2 71 64 168 64 #arcP
Mr0 f4 280 64 337 64 #arcP
>Proto Mr0 .type ivy.pizza.store.Data #txt
>Proto Mr0 .processKind NORMAL #txt
>Proto Mr0 0 0 32 24 18 0 #rect
>Proto Mr0 @|BIcon #fIcon
Mr0 f0 mainOut f2 tail #connect
Mr0 f2 head f3 mainIn #connect
Mr0 f3 mainOut f4 tail #connect
Mr0 f4 head f1 mainIn #connect
