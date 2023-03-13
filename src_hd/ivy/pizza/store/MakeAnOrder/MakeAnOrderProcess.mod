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
Ms0 @UdMethod f8 '' #zField
Ms0 @GridStep f9 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @UdMethod f12 '' #zField
Ms0 @GridStep f13 '' #zField
Ms0 @PushWFArc f15 '' #zField
Ms0 @PushWFArc f11 '' #zField
Ms0 @GridStep f16 '' #zField
Ms0 @PushWFArc f14 '' #zField
Ms0 @Alternative f17 '' #zField
Ms0 @PushWFArc f18 '' #zField
Ms0 @GridStep f19 '' #zField
Ms0 @PushWFArc f20 '' #zField
Ms0 @PushWFArc f21 '' #zField
Ms0 @UdProcessEnd f22 '' #zField
Ms0 @PushWFArc f23 '' #zField
Ms0 @UdProcessEnd f25 '' #zField
Ms0 @RestClientCall f26 '' #zField
Ms0 @PushWFArc f28 '' #zField
Ms0 @UdMethod f24 '' #zField
Ms0 @PushWFArc f27 '' #zField
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
Ms0 f3 67 451 26 26 -14 15 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f4 195 451 26 26 0 12 #rect
Ms0 f4 @|UdExitEndIcon #fIcon
Ms0 f5 93 464 195 464 #arcP
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import ivy.pizza.store.beans.ProductBean;

ProductBean bean = new ProductBean();

in.pizzaList = bean.getPizzaList();
in.drinkList = bean.getDrinkList();' #txt
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
Ms0 f8 guid 186C975E5383B004 #txt
Ms0 f8 method addToCart(String,String,String) #txt
Ms0 f8 inParameterDecl '<String productId,String productName,String productPrice> param;' #txt
Ms0 f8 inParameterMapAction 'out.productId=param.productId;
out.productName=param.productName;
out.productPrice=param.productPrice;
' #txt
Ms0 f8 outParameterDecl '<String productId> result;' #txt
Ms0 f8 outParameterMapAction 'result.productId=in.productId;
' #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addToCart</name>
    </language>
</elementInfo>
' #txt
Ms0 f8 75 163 26 26 -23 15 #rect
Ms0 f8 @|UdMethodIcon #fIcon
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 actionCode 'import ivy.pizza.store.utils.BeanContextUtils;
import ivy.pizza.store.beans.ShoppingCartBean;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;


ShoppingCartBean bean = BeanContextUtils.findBean("shoppingCartBean", ShoppingCartBean.class) as ShoppingCartBean;
bean.addProductToCart(in.productId, in.productName, in.productPrice);


FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO, in.productName + " has been added to cart!", "");
FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ms0 f9 security system #txt
Ms0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add a product to cart</name>
    </language>
</elementInfo>
' #txt
Ms0 f9 200 154 112 44 -53 -8 #rect
Ms0 f9 @|StepIcon #fIcon
Ms0 f10 101 176 200 176 #arcP
Ms0 f12 guid 186CAD904C67FAF9 #txt
Ms0 f12 method saveOrder() #txt
Ms0 f12 inParameterDecl '<> param;' #txt
Ms0 f12 outParameterDecl '<> result;' #txt
Ms0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveOrder()</name>
    </language>
</elementInfo>
' #txt
Ms0 f12 75 275 26 26 -33 15 #rect
Ms0 f12 @|UdMethodIcon #fIcon
Ms0 f13 actionTable 'out=in;
' #txt
Ms0 f13 actionCode 'import ivy.pizza.store.utils.BeanContextUtils;
import ivy.pizza.store.beans.ShoppingCartBean;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

ShoppingCartBean bean = BeanContextUtils.findBean("shoppingCartBean", ShoppingCartBean.class) as ShoppingCartBean;
String orderId = bean.saveOrder();

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO, "Thank you for your order! ID = " + orderId, "");
FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save order</name>
    </language>
</elementInfo>
' #txt
Ms0 f13 440 146 112 44 -28 -8 #rect
Ms0 f13 @|StepIcon #fIcon
Ms0 f15 496 146 413 64 #arcP
Ms0 f15 1 496 64 #addKink
Ms0 f15 1 0.10635025023204361 0 0 #arcLabel
Ms0 f11 312 176 400 77 #arcP
Ms0 f11 1 400 176 #addKink
Ms0 f11 0 0.862373836474131 0 0 #arcLabel
Ms0 f16 actionTable 'out=in;
' #txt
Ms0 f16 actionCode 'import ivy.pizza.store.utils.BeanContextUtils;
import ivy.pizza.store.beans.ShoppingCartBean;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

ShoppingCartBean bean = BeanContextUtils.findBean("shoppingCartBean", ShoppingCartBean.class) as ShoppingCartBean;
in.isOrderFormValid = bean.validateOrderInput();



' #txt
Ms0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate order</name>
    </language>
</elementInfo>
' #txt
Ms0 f16 192 266 112 44 -35 -8 #rect
Ms0 f16 @|StepIcon #fIcon
Ms0 f14 101 288 192 288 #arcP
Ms0 f17 368 272 32 32 0 16 #rect
Ms0 f17 @|AlternativeIcon #fIcon
Ms0 f18 304 288 368 288 #arcP
Ms0 f19 actionTable 'out=in;
' #txt
Ms0 f19 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Double check the form", "");
FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ms0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show error</name>
    </language>
</elementInfo>
' #txt
Ms0 f19 328 338 112 44 -29 -8 #rect
Ms0 f19 @|StepIcon #fIcon
Ms0 f20 expr in #txt
Ms0 f20 outCond !in.isOrderFormValid #txt
Ms0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
    </language>
</elementInfo>
' #txt
Ms0 f20 384 304 384 338 #arcP
Ms0 f20 0 0.5 13 0 #arcLabel
Ms0 f21 expr in #txt
Ms0 f21 outCond in.isOrderFormValid #txt
Ms0 f21 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
    </language>
</elementInfo>
' #txt
Ms0 f21 400 288 496 190 #arcP
Ms0 f21 1 496 288 #addKink
Ms0 f21 0 0.5520833333333334 0 -7 #arcLabel
Ms0 f22 371 419 26 26 0 12 #rect
Ms0 f22 @|UdProcessEndIcon #fIcon
Ms0 f23 384 382 384 419 #arcP
Ms0 f25 291 547 26 26 0 12 #rect
Ms0 f25 @|UdProcessEndIcon #fIcon
Ms0 f26 clientId 845a4b02-4c87-4962-a7fa-46901bd0d370 #txt
Ms0 f26 queryParams 'name=in.customerName;
' #txt
Ms0 f26 resultType com.fasterxml.jackson.databind.JsonNode #txt
Ms0 f26 responseCode 'import ivy.pizza.store.utils.BeanContextUtils;
import ivy.pizza.store.beans.ShoppingCartBean;

ShoppingCartBean bean = BeanContextUtils.findBean("shoppingCartBean", ShoppingCartBean.class) as ShoppingCartBean;

in.customerSalutation = result.get("gender").asText() == "male" ? "Mr." : "Mrs.";' #txt
Ms0 f26 clientErrorCode ivy:error:rest:client #txt
Ms0 f26 statusErrorCode ivy:error:rest:client #txt
Ms0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Determine gender</name>
    </language>
</elementInfo>
' #txt
Ms0 f26 144 538 112 44 -47 -8 #rect
Ms0 f26 @|RestClientCallIcon #fIcon
Ms0 f28 256 560 291 560 #arcP
Ms0 f24 guid 186DBA799C7EFD8C #txt
Ms0 f24 method getGender(String) #txt
Ms0 f24 inParameterDecl '<String customerName> param;' #txt
Ms0 f24 inParameterMapAction 'out.customerName=param.customerName;
' #txt
Ms0 f24 outParameterDecl '<> result;' #txt
Ms0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getGender(String)</name>
    </language>
</elementInfo>
' #txt
Ms0 f24 67 547 26 26 -41 14 #rect
Ms0 f24 @|UdMethodIcon #fIcon
Ms0 f27 93 560 144 560 #arcP
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
Ms0 f8 mainOut f10 tail #connect
Ms0 f10 head f9 mainIn #connect
Ms0 f13 mainOut f15 tail #connect
Ms0 f15 head f1 mainIn #connect
Ms0 f9 mainOut f11 tail #connect
Ms0 f11 head f1 mainIn #connect
Ms0 f12 mainOut f14 tail #connect
Ms0 f14 head f16 mainIn #connect
Ms0 f16 mainOut f18 tail #connect
Ms0 f18 head f17 in #connect
Ms0 f17 out f20 tail #connect
Ms0 f20 head f19 mainIn #connect
Ms0 f17 out f21 tail #connect
Ms0 f21 head f13 mainIn #connect
Ms0 f19 mainOut f23 tail #connect
Ms0 f23 head f22 mainIn #connect
Ms0 f26 mainOut f28 tail #connect
Ms0 f28 head f25 mainIn #connect
Ms0 f24 mainOut f27 tail #connect
Ms0 f27 head f26 mainIn #connect
