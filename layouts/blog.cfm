<cfparam name="args.sidebar" default="true">
<cfoutput>
	<!DOCTYPE html>
	<html>
	<head>
		<!--- Head Includes --->
		#cb.quickView( view='_headIncludes' )#

		<!--- ContentBoxEvent --->
		#cb.event( "cbui_beforeHeadEnd" )#
	</head>
	<body>
		<!--- ContentBoxEvent --->
		#cb.event( "cbui_afterBodyStart" )#
		
		<!--- Header --->
		#cb.quickView( view='_header' )#

		<!--- ContentBoxEvent --->
		#cb.event( "cbui_beforeContent" )#

		<!--- Main View --->
		#cb.mainView( args=args )#

		<!--- ContentBoxEvent --->
		#cb.event( "cbui_afterContent" )#

		<!--- Footer --->
		#cb.quickView( view='_footer' )#

		<!--- Body End Includes --->
		#cb.quickView( view='_bodyEndIncludes' )#

		<!--- ContentBoxEvent --->
		#cb.event( "cbui_beforeBodyEnd" )#
	</body>
	</html>
</cfoutput>