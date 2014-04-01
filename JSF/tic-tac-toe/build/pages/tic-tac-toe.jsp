<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=UTF-8">
<title>Tic Tac Toe</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<f:view>
	<h:form>
		<h:panelGrid columns="1">
			<h:outputText id="meldung" value="#{tttHandler.meldung}" />
			<h:panelGrid columns="3" styleClass="brett">
				<h:commandButton id="feld-0" image="#{tttHandler.image[0]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-1" image="#{tttHandler.image[1]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-2" image="#{tttHandler.image[2]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-3" image="#{tttHandler.image[3]}" actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-4" image="#{tttHandler.image[4]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-5" image="#{tttHandler.image[5]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-6" image="#{tttHandler.image[6]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-7" image="#{tttHandler.image[7]}"	actionListener="#{tttHandler.zug}" />
				<h:commandButton id="feld-8" image="#{tttHandler.image[8]}"	actionListener="#{tttHandler.zug}" />
			</h:panelGrid>
			<h:commandButton value="Neues Spiel" action="#{tttHandler.neuesSpiel}"/>
		</h:panelGrid>
	</h:form>
</f:view>
</body>
</html>
