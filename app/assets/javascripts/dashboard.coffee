# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

fetch_loop = null


start_loop = ->
	fetch_loop = setInterval ()->
		$.get('/feed').success (data)->
			console.log 'updated'
			parse_data data
			return
		return
	,5000
	return


stop_loop = ->
	clearInterval fetch_loop
	return


parse_data = (data_arr)->
	$('#node_list').html ""
	$('#node_list').append "<table class='table'>"
	for data in data_arr
		$('#node_list table').append "<tr id='row-#{data[0]}''>"
		$("#row-#{data[0]}").append "<td>"+data[0]+"</td>"
		$("#row-#{data[0]}").append "<td>"+data[1]+"</td>"
		# d = eval data
		# keys = Object.getOwnPropertyNames d
		# for k in keys
		# 	$("#row-#{data[0]}").append "<td>"+d[k]+"</td>"


ready = ->
	start_loop()
	return
	

$(document).ready(ready)
$(document).on 'page:load', ready