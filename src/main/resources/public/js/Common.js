
function capitalize(textboxid, str) {
	//string with alteast one character
	if (str && str.length >= 1) {       
		var firstChar = str.charAt(0);
		var remainingStr = str.slice(1);
		str = firstChar.toUpperCase() + remainingStr;
	}
	document.getElementById(textboxid).value = str;
}

function validateNumber(event) {
	var regex = new RegExp("^[0-9]+$");
	var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
	if (regex.test(key) || event.keyCode == 8) {
		return true;
	}
	else{
		event.preventDefault();
		return false;
	}
}


function validatePanNumber(pan) {
	var panValue = pan.value;
	var reg = /^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/;
	if(reg.test(panValue)==false){
		 pan.value = "";
		 alert('Enter correct PAN number.');
	}
	else{
		 pan.value = panValue.toUpperCase();
	}
}


function validateEmail(mail,msg) {
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if (reg.test(mail.value) == false) {
    	new PNotify({ title: '', text: msg, type: 'info'});
        mail.value = "";
        return false;
    }
    return true
}


function validateDecimal(evt, val) {
 	var patt = /^\d*\.?\d{0,3}$/;
    var num = val.value;
    if(!isNaN(num)){
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	  	var startPos = val.selectionStart;
	    if ((charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) ||(num.indexOf(".") != -1 && charCode == 46)){
	         evt.preventDefault();
	         return false;     
		}
	    if(num.length > 1 && !patt.test(num)){
	    	if(startPos == num.length){
	    		evt.preventDefault();
	            return false;
	        }    
	     }
    }
    return true; 
}
function validateDecimal(evt, val, maxValue) {
 	var patt = /^\d*\.?\d{0,3}$/;
    var num = val.value;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
  	var startPos = val.selectionStart;
  	
  	if(Number(val.value) > Number(maxValue)) 
		 return false;
  	
    if ((charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) ||(num.indexOf(".") != -1 && charCode == 46)){
         evt.preventDefault();
         return false;     
	}
    if(num.length > 1 && !patt.test(num)){
    	if(startPos == num.length){
    		evt.preventDefault();
            return false;
        }    
    	
     }
    return true; 
}
function selectAllCheckbox(source){
	// show all records in table
	$(source).closest('table').DataTable().page.len(-1).draw();
	//source = reference of selectAll checkbox button
	$('input:checkbox').prop('checked',source.checked);
	// show 10 records in table
	if(!source.checked)
		$(source).closest('table').DataTable().page.len(10).draw();
}

function deleteRecordConfirmation(messageHeader, message, url) {
	//msgHeader = Header of Delete Message.
	//message = Detail of message.  -follow pattern ' Are you Sure want to delete <b> ${employeeCategory.getEmployee_category()}</b>  record ?'
	//ulr  = ulr of controller.
	(new PNotify({
		title: messageHeader,
		text: message,
		icon: 'glyphicon glyphicon-question-sign',
		hide: false,
		confirm: {
			confirm: true
		},
		buttons: {
			closer: false,
            sticker: false
		},
		history: {
            history: false
		}
	})).get().on('pnotify.confirm', function(){
		window.location.href=url;
	}).on('pnotify.cancel', function(){false });
	
}

function deleteSelectedRecordConfirmation(tableId, initialCheckboxName, messageHeader, url) {
	//tableId = Table name
	//initialCheckboxName = only text value of checkbox rather integer value.
	//message = Detail of message.  -follow pattern ' Are you sure you want to permanently delete the selected item(s)?'
	//ulr  = ulr of controller. -follow pattern ${pageContext.request.contextPath}/deletedSelectedEmployeeCategory?deleteSelectedItem="
	/*var table = document.getElementById(tableId);
	var rowCount = table.rows.length;*/
	var message = ' Are you want to permanently delete the selected item(s)?';
	var deleteIdString = '';
	
	/*for (var i=1; i<rowCount; i++) {
		var idName = initialCheckboxName+table.rows[i].cells.item(1).innerHTML;
		if(!$('#'+idName).length == 0){
			var val = document.getElementById(idName).checked;
			if (val == true) {
				deleteIdString += table.rows[i].cells.item(1).innerHTML+",";
			}
		}
	}*/
	$('#'+tableId+' tbody tr').each(function() {
	   	 var idName = $(this).find("td").eq(1).html();  
	   	 if(!$('#'+initialCheckboxName+idName).length == 0){
			if ($('#'+initialCheckboxName+idName).prop('checked')) {
				deleteIdString += $(this).find("td").eq(1).html()+",";
			}
		}  
	});
	
	if (deleteIdString.trim().length > 0) 
		deleteRecordConfirmation(messageHeader, message, url+deleteIdString);
	else
		new PNotify({ title: '', text: 'There is no record found for delete.', type: 'info'});
}

function deleteSelectedRecordConfirmationWithMessage(tableId, initialCheckboxName, messageHeader, message, url) {
	//tableId = Table name
	//initialCheckboxName = only text value of checkbox rather integer value.
	//message = Detail of message.  -follow pattern ' Are you sure you want to permanently delete the selected item(s)?'
	//ulr  = ulr of controller. -follow pattern ${pageContext.request.contextPath}/deletedSelectedEmployeeCategory?deleteSelectedItem="
/*	var table = document.getElementById(tableId);
	var rowCount = table.rows.length;*/
	//var message = ' Are you sure you want to permanently delete the selected item(s)?';
	var deleteIdString = '';
	
	/*for (var i=1; i<rowCount; i++) {
		var idName = initialCheckboxName+table.rows[i].cells.item(1).innerHTML;
		if(!$('#'+idName).length == 0){
			var val = document.getElementById(idName).checked;
			if (val == true) {
				deleteIdString += table.rows[i].cells.item(1).innerHTML+",";
			}
		}
	}*/
	$('#'+tableId+' tbody tr').each(function() {
	   	 var idName = $(this).find("td").eq(1).html();  
	   	 if(!$('#'+initialCheckboxName+idName).length == 0){
			if ($('#'+initialCheckboxName+idName).prop('checked')) {
				deleteIdString += $(this).find("td").eq(1).html()+",";
			}
		}  
	});
	if (deleteIdString.trim().length > 0) 
		deleteRecordConfirmation(messageHeader, message, url+deleteIdString);
	else
		new PNotify({ title: '', text: 'There is no record selected.', type: 'info'});
}

function toFixedDecimalPlaces(val,decimalPlaces){
	return val.value = (Number.parseFloat(val.value) > 0)?Number.parseFloat(val.value).toFixed(decimalPlaces):0;
}
function checkIsValideFromToDate(from_Date,to_Date,comparison,errorMessage){
	//fromDate,toDate is date reference and its date format is dd-mm-yyyy.
	//comparison is boolean type value . true = fromDate is equal toDate and false = both are not equal.
	var fromDate = from_Date.value;
	var toDate = to_Date.value;
	if(fromDate.length > 0 && toDate.length > 0){
		fromDate = new Date(fromDate.replace( /(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"));
		toDate = new Date(toDate.replace( /(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"));
		console.log("From date "+ fromDate);
		console.log("To date "+ toDate);
		console.log("comparison "+comparison);
		 if((comparison && fromDate > toDate) || (!comparison && fromDate >= toDate)){
			 	console.log("inside if");
				//$(from_Date).css("border","1px solid red");
				$(from_Date).attr('title', errorMessage);
				//$(to_Date).css("border","1px solid red");
				$(to_Date).attr('title', errorMessage);
				if(errorMessage != '')
					new PNotify({ title: '', text: errorMessage, type: 'info'});
				$(from_Date).val('');
				$(to_Date).val('');
				return false;
		}		
		else{
			/*$(from_Date).css("border","1px solid lightgray");
			$(to_Date).css("border","1px solid lightgray");*/
		}
	}else{
		return false;
	}
	return true;
}
function calculateDateDifference(from_Date,to_Date,flag, output) {
	//fromDate,toDate is date reference and its date format is dd-mm-yyyy.
	//flag has integer type value in between (1-3). 1 for total yaer , 2 for total month , 3 for total days.
	if(checkIsValideFromToDate(from_Date,to_Date,true,"")){
		var fromDate = from_Date.value;
		var toDate = to_Date.value;
		fromDate = new Date(fromDate.replace( /(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"));
		toDate = new Date(toDate.replace( /(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"));
		var diff_date =  toDate - fromDate;
		if(flag == 1)
			$(output).val(Math.floor(diff_date/31536000000));
		else if(flag == 2)
			$(output).val(Math.floor(diff_date/2628000000));
		else
			$(output).val(Math.floor(diff_date/86400000));
	}
	else{
		$(output).val('');
  		return false;
	}
}
function checkSession(){
	alert("inside checkSession")
	$.get('${pageContext.request.contextPath}/checkSession',null,function(resp){
		if(resp == 0)
			window.location = '${pageContext.request.contextPath}/login'
	});
}
