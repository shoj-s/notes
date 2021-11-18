<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>



</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

<form method="post" action="saveNote">
		<p>
			NoteID: <input type="text" name="noteId" />
		</p>
		<p>
			Title: <input type="text" name="noteTitle" />
		</p>
		<p>
			Content: <input type="text" name="noteContent" />
		</p>
		<p>
			Status: <input type="text" name="noteStatus">
				
		</p>
		<input type="submit" />
	</form>

	<form method="get" action="deleteNote">
		<p>
			<input type="text" name="noteId" /> <input type="submit"
				value="delete">
		</p>
	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<h3>Note details</h3>
	<div>
<table border="2">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Content</th>
				<th>Status</th>
				<th>CreatedAt</th>
			</tr>
		</thead>

		<c:forEach var="note" items="${notes}">
			<tr>
				<td>${note.getNoteId()}</td>
				<td>${note.getNoteTitle()}</td>
				<td>${note.getNoteContent()}</td>
				<td>${note.getNoteStatus()}</td>
				<td>${note.getCreatedAt()}</td>
			</tr>
		</c:forEach>

	</table>
	</div>
</body>
</html>