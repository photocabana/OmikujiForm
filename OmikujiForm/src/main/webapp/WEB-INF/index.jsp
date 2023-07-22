<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<h1>Send an Omikuji!</h1>
	
	<form action="/submitOmikuji" method="post">
		
		<label>Pick any number from 5 to 25:</label>
		<br>
		<select name="number" id="number">
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
		<option value="17">17</option>
		<option value="18">18</option>
		<option value="19">19</option>
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		</select>
		<br />
		<label>Enter the name of any city:</label>
		<br>
		<input type="text" name="city"/>
		<br />
		<label>Enter the name of any real person:</label>
		<br>
		<input type="text" name="person"/>
		<br />
		<label>Enter professional endeavor for hobby:</label>
		<br>
		<input type="text" name="hobby"/>
		<br />
		<label>Enter any type of living thing:</label>
		<br>
		<input type="text" name="livingThing"/>
		<br />
		<label>Say something nice to someone:</label>
		<br>
		<textarea rows="10" cols="30" name="message"></textarea>
		<br />
		<p>Send and Show a friend!</p>
	
		<input class="button" type="submit" value="Send"/>
	</form>
</body>
</html>
