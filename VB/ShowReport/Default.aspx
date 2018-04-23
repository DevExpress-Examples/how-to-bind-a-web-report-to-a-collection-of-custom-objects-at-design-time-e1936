﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ShowReport._Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v8.1.Web, Version=8.1.10.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxxr:ReportToolbar ID="ReportToolbar1" runat="server" ReportViewer="<%#ReportViewer1%>"
			ShowDefaultButtons="False">
			<Styles>
				<LabelStyle>
					<Margins MarginLeft="3px" MarginRight="3px" />
				</LabelStyle>
			</Styles>
			<Items>
				<dxxr:ReportToolbarButton ItemKind="Search" ToolTip="Display the search window" />
				<dxxr:ReportToolbarSeparator />
				<dxxr:ReportToolbarButton ItemKind="PrintReport" ToolTip="Print the report" />
				<dxxr:ReportToolbarButton ItemKind="PrintPage" ToolTip="Print the current page" />
				<dxxr:ReportToolbarSeparator />
				<dxxr:ReportToolbarButton Enabled="False" ItemKind="FirstPage" ToolTip="First Page" />
				<dxxr:ReportToolbarButton Enabled="False" ItemKind="PreviousPage" ToolTip="Previous Page" />
				<dxxr:ReportToolbarLabel Text="Page" />
				<dxxr:ReportToolbarComboBox ItemKind="PageNumber" Width="65px">
				</dxxr:ReportToolbarComboBox>
				<dxxr:ReportToolbarLabel Text="of" />
				<dxxr:ReportToolbarTextBox IsReadOnly="True" ItemKind="PageCount" />
				<dxxr:ReportToolbarButton ItemKind="NextPage" ToolTip="Next Page" />
				<dxxr:ReportToolbarButton ItemKind="LastPage" ToolTip="Last Page" />
				<dxxr:ReportToolbarSeparator />
				<dxxr:ReportToolbarButton ItemKind="SaveToDisk" ToolTip="Export a report and save it to the disk" />
				<dxxr:ReportToolbarButton ItemKind="SaveToWindow" ToolTip="Export a report and show it in a new window" />
				<dxxr:ReportToolbarComboBox ItemKind="SaveFormat" Width="70px">
					<Elements>
						<dxxr:ListElement Text="Pdf" Value="pdf" />
						<dxxr:ListElement Text="Xls" Value="xls" />
						<dxxr:ListElement Text="Rtf" Value="rtf" />
						<dxxr:ListElement Text="Mht" Value="mht" />
						<dxxr:ListElement Text="Text" Value="txt" />
						<dxxr:ListElement Text="Csv" Value="csv" />
						<dxxr:ListElement Text="Image" Value="png" />
					</Elements>
				</dxxr:ReportToolbarComboBox>
			</Items>
		</dxxr:ReportToolbar>
		<dxxr:ReportViewer ID="ReportViewer1" runat="server" OnUnload="ReportViewer1_Unload">
		</dxxr:ReportViewer>

	</div>
	</form>
</body>
</html>