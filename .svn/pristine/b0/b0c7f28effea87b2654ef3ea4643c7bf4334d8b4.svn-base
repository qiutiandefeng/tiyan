<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>JS测试</title>
<SCRIPT language="JavaScript">
	var tempRow = 0;
	var maxRows = 0;
	function insertRows() {
		tempRow = table1.rows.length - 1;
		maxRows = tempRow;
		tempRow = tempRow + 1;
		var Rows = table1.rows;//类似数组的Rows 
		var newRow = table1.insertRow(table1.rows.length);//插入新的一行 
		var Cells = newRow.cells;//类似数组的Cells 
		for (i = 0; i < 2; i++){
			var newCell = Rows(newRow.rowIndex).insertCell(Cells.length);
			newCell.align = "center";
			switch (i){
			case 0:
				newCell.innerHTML = "<td valign='top'>corpName</TD>";
				break;
			case 1:
				newCell.innerHTML = "<td valign='top'><a href='javascript:delTableRow(\""
						+ tempRow + "\")'>删除</a></TD>";
				break;
			}
		}
		maxRows += 1;
		alert("maxRows\t" + maxRows);
	}
	function delTableRow(rowNum) {
		if (table1.rows.length > rowNum) {
			table1.deleteRow(rowNum);
		}
	}
</SCRIPT>
</head>
<body>

	<form action="">

		<table border="0" cellspacing="0" cellpadding="0" width="98%"
			align="center">
			<tr valign="top">
				<th><input value="添加" type="button" onclick="insertRows()"></th>
			</tr>
		</table>

		<br />

		<table border="1" width="98%" align="center" id="table1">

			<tr>

				<th>企业名称</th>

				<th>操作
				<th>
			</tr>

		</table>
		<a href="HelloWorld">测试</a>
	</form>

</body>

</html>