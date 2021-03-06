<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="<c:url value='/static/bower_components/jquery/dist/jquery.min.js'/>"></script>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Assignee List
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Assignee</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      
      <!-- /.row -->

      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><a href="${pageContext.request.contextPath}/assignOrder.do" class="btn btn-block btn-primary btn-flat"> New Assignee +</a></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead style="background-color: #3c8dbc;color: #fdfdfd;">
                <tr>
                  <th>S.No.</th>
                  <th>Executive Name</th>
                  <th>Order Name</th>
                  <th>Assignee date</th>
                  <th>Delivery date</th>
                  <th>Status</th>
                  <th>Order Created Date</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
               
                </tbody>
                <tfoot>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                   <td><i class="fa fa-fw fa-bank" onclick="javascript:edit();"></i> <i class="fa fa-fw fa-edit" onclick="javascript:deleteItem();"></i> <i class="fa fa-fw fa-trash-o" onclick="javascript:deleteItem();"></i></td>
                  
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
     <input type="hidden" id="activeItemUrl" value="${pageContext.request.contextPath}/apiItems">
  </div>
  <!-- /.content-wrapper -->
  <script type="text/javascript">
  $( document ).ready(function() {
	  
  });
  function edit(itemId){
	  
	  var path=$('#activeItemUrl').val();
	  var pathname = window.location.pathname;
	  var api_url = path+'/editItem'+"/"+itemId;
	  window.location=api_url;
	   $.ajax({
	        url: api_url + "/" + userId,
	        contentType: "application/json",
	        dataType: 'json',
	        success: function(result){
	           if(result.status=="Success"){
	            		window.location=path;
	            }else{
	            	alert("Please check some error occur.");
	            }
	        }
	    }); 
  }
  function deleteItem(itemId){
	  var path=$('#activeItemUrl').val();
	  var pathname = window.location.pathname;
	  var api_url = pathname+'/rest/item/delete';
	  var r=confirm("Are you sure ! You want to delete Tthis Item");
  	if(r==true){
	  $.ajax({
	        url: api_url + "/" + itemId,
	        contentType: "application/json",
	        dataType: 'json',
	        success: function(result){
	            console.log(result);
	           if(result.status=="Success"){
	            		window.location="/OM/apiItems";
	            }else{
	            	alert("Please check some error occur.");
	            }
	        }
	    });
     }
  }
  </script>