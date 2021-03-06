<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.*,java.util.*"%>
<script type="text/javascript"
	src="<c:url value='/static/bower_components/jquery/dist/jquery.min.js'/>"></script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Order Details</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Order Details</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">
							<a
								href="${pageContext.request.contextPath}/deleteOrder?order-number=${orderDetail.orderNumber}"
								class="btn btn-block btn-primary btn-flat">Delete Order</a>
						</h3>
						<h3 class="box-title">
							<a
								href="${pageContext.request.contextPath}/markDelivered?order-number=${orderDetail.orderNumber}"
								class="btn btn-block btn-primary btn-flat">Mark Delivered</a>
						</h3>
						<h3 class="box-title">
							<a
								href="${pageContext.request.contextPath}/cancelOrder?order-number=${orderDetail.orderNumber}"
								class="btn btn-block btn-primary btn-flat">Cancel Order</a>
						</h3>
						<h3 class="box-title">
							<a
								href="${pageContext.request.contextPath}/acceptOrder?order-number=${orderDetail.orderNumber}"
								class="btn btn-block btn-primary btn-flat">Accept Order</a>
						</h3>
						<h3 class="box-title">
							<a href="${pageContext.request.contextPath}/order"
								class="btn btn-block btn-primary btn-flat"
								style="background-color: firebrick !important;">Back</a>
						</h3>
					</div>
					<!-- /.box-header -->
				</div>
			</div>
		</div>
		<section class="invoice">
			<!-- title row -->
			<div class="row">
				<div class="col-xs-12">
					<h2 class="page-header">
						<i class="fa fa-globe"></i> Order Details <small
							class="pull-right">Date: <%=(new java.util.Date()).toLocaleString()%></small>
					</h2>
				</div>
				<!-- /.col -->
			</div>
			<!-- info row -->
			<div class="row invoice-info">
				<c:if test="${not empty orderDetail.customerDto}">
					<div class="col-sm-4 invoice-col">
						Customer Details
						<address>
							<strong> GST No. : ${orderDetail.customerDto.gstNo}</strong><br>
							${orderDetail.customerDto.shopName}<br>,${orderDetail.customerDto.plotNo}<br>
							${orderDetail.customerDto.roadName},${orderDetail.customerDto.area}<br>
							${orderDetail.customerDto.pincode},${orderDetail.customerDto.landMark}<br>
							${orderDetail.customerDto.shopPhone}<br>
							${orderDetail.customerDto.stateGstCode}
							${orderDetail.customerDto.stateName}<br>
							${orderDetail.customerDto.city}
							</td> ${orderDetail.customerDto.personName}<br>
							${orderDetail.customerDto.email}<br>
							${orderDetail.customerDto.mob}<br>

						</address>
					</div>
				</c:if>
				<c:if test="${not empty orderDetail.consigneeDto}">
					<div class="col-sm-4 invoice-col">
						Consinee Details
						<address>
							<strong> ${orderDetail.consigneeDto.consigneeName}</strong><br>
							${orderDetail.consigneeDto.plotNo},
							${orderDetail.consigneeDto.roadName}<br>
							${orderDetail.consigneeDto.area},${orderDetail.consigneeDto.pincode},${orderDetail.consigneeDto.landMark}<br>
							${orderDetail.consigneeDto.email}<br>
							${orderDetail.consigneeDto.mob}<br>
							${orderDetail.consigneeDto.addressLine1}<br>
							${orderDetail.consigneeDto.addressLine2}<br>

						</address>
					</div>
				</c:if>
				<!-- /.col -->
				<!-- /.col -->
				<div class="col-sm-4 invoice-col">
					<b>Order No.:</b> ${orderDetail.orderNumber}<br> <b>Order
						Date:</b>
					<c:set var="order_date" value="${orderDetail.orderDate}" />
					<fmt:formatDate type="both" value="${order_date}" />
					<br> <b>Order Status:</b>${orderDetail.orderStatus}
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<!-- Table row -->
			<div class="row">
				<div class="col-xs-12 table-responsive">
					<table class="table table-striped">
						<thead>

							<tr>
								<th>Qty</th>
								<th>Product</th>
								<th>Offer Type</th>
								<th>Offer On</th>
								<th>Off</th>
								<th>Status #</th>
								<th>Subtotal</th>
								<th>Order Date</th>
								<th>Unit Price#</th>
								<th>Mrp#</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="total" value="${0}" />
							<c:forEach items="${orderDetail.ordersDtos}" var="orders"
								varStatus="status">
								<tr>
									<td>${orders.qty}</td>
									<td>${orders.itemsDto.itemName}(${orders.itemsDto.pack})</td>
									<td>${orders.itemsDto.offerType.type()}</td>
									<td>${orders.itemsDto.offerUnits}</td>
									<td>${orders.itemsDto.free}</td>
									<td>${orders.orderStatus}</td>
									<td>${orders.amount}</td>
									<td><c:set var="ordr_date" value="${orders.orderDate}" />
										<fmt:formatDate type="both" value="${ordr_date}" /></td>

									<td>${orders.itemsDto.unitPrice}</td>
									<td>${orders.itemsDto.mrp}</td>
									<c:set var="total"
										value="${total + orders.itemsDto.unitPrice }" />
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row">
				<!-- accepted payments column -->
				<div class="col-xs-6"></div>
				<!-- /.col -->
				<div class="col-xs-6">
					<p class="lead">Amount Due : &#x20b9;
						${orderDetail.totalAmount}</p>

					<div class="table-responsive">
						<table class="table">
							<tr>
								<th style="width: 50%">Subtotal:</th>
								<td>&#x20b9; ${orderDetail.totalAmount}</td>
							</tr>
							<tr>
								<th>Tax (5%) Included</th>
								<td>&#x20b9; 0.00</td>
							</tr>
							<tr>
								<th>Shipping:</th>
								<td>&#x20b9; 0.00</td>
							</tr>
							<tr>
								<th>Total:</th>
								<td>&#x20b9; ${orderDetail.totalAmount}</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<!-- this row will not appear when printing -->
			<div class="row no-print">
				<div class="col-xs-12">
					<a href="invoice-print.html" target="_blank"
						class="btn btn-default"><i class="fa fa-print"></i> Print</a>
					<button type="button" class="btn btn-success pull-right">
						<i class="fa fa-credit-card"></i> Submit Payment
					</button>
					<button type="button" class="btn btn-primary pull-right"
						style="margin-right: 5px;">
						<i class="fa fa-download"></i> Generate PDF
					</button>
				</div>
			</div>
		</section>

		<%--<div class="box box-default">
			<div class="box-header with-border">
				<h3 class="box-title">Order</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool"
						data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove">
						<i class="fa fa-remove"></i>
					</button>
				</div>
			</div>
			<!-- /.box-header -->
			 <div class="box-body">
				<table id="example1" class="table table-bordered table-striped">
					<tr>
						<td>Order No. ${orderDetail.orderNumber}</td>
						<td>Total Amount INR. ${orderDetail.totalAmount}</td>
						<td>Order Date : <c:set var="order_date"
								value="${orderDetail.orderDate}" /> <fmt:formatDate type="both"
								value="${order_date}" />
						</td>
						<td>Order Status : ${orderDetail.orderStatus}</td>
						<td>Rejected On : <c:if test="${not empty orderDetail.rejectedOn}">
						<c:set var="reject_date"
								value="${orderDetail.rejectedOn}" /> <fmt:formatDate type="both"
								value="${reject_date}" />
						</c:if>
						</td>
					</tr>
					<tr>
						<td>Accepted On : <c:if test="${not empty orderDetail.acceptedOn}">
						<c:set var="accept_date"
								value="${orderDetail.acceptedOn}" /> <fmt:formatDate type="both"
								value="${accept_date}" />
						</c:if></td>
						<td>Delivered On : <c:if test="${not empty orderDetail.deliveredOn}">
						<c:set var="dilivered_date"
								value="${orderDetail.deliveredOn}" /> <fmt:formatDate type="both"
								value="${dilivered_date}" />
						</c:if></td>
						<td>Remarks : <c:if test="${not empty orderDetail.remark}">${orderDetail.remark}</c:if> </td>
						<td>Cancelled By : <c:if test="${not empty orderDetail.cancelledBy}">${orderDetail.cancelledBy}</c:if> </td>
					</tr>
					<c:if test="${not empty orderDetail.customerDto}">
					<tr>
						<td>Shop Name : ${orderDetail.customerDto.shopName}</td>
						<td>GST No. : ${orderDetail.customerDto.gstNo}</td>
						<td>Plot No. : ${orderDetail.customerDto.plotNo}</td>
						<td>Road Name : ${orderDetail.customerDto.roadName}</td>
						<td>Area : ${orderDetail.customerDto.area}</td>
					</tr>
					<tr>
						<td>Pincode : ${orderDetail.customerDto.pincode}</td>
						<td>LandMark : ${orderDetail.customerDto.landMark}</td>
						<td>Shop Phone : ${orderDetail.customerDto.shopPhone}</td>
						<td>State : ${orderDetail.customerDto.stateName}</td>
						<td>GST Code : ${orderDetail.customerDto.stateGstCode}</td>
					</tr>
					
					<tr>
						<td>City : ${orderDetail.customerDto.city}</td>
						<td>Customer Name : ${orderDetail.customerDto.personName}</td>
						<td>Email : ${orderDetail.customerDto.email}</td>
						<td>Mobile : ${orderDetail.customerDto.mob}</td>
					</tr>
                 </c:if>
                 <c:if test="${not empty orderDetail.consigneeDto}">
					<tr>
						<td>Plot No. : ${orderDetail.consigneeDto.plotNo}</td>
						<td>Road Name : ${orderDetail.consigneeDto.roadName}</td>
						<td>Area : ${orderDetail.consigneeDto.area}</td>
						<td>Pincode : ${orderDetail.consigneeDto.pincode}</td>
						<td>Landmark : ${orderDetail.consigneeDto.landMark}</td>
					</tr>
					<tr>
						<td>Customer Name : ${orderDetail.consigneeDto.consigneeName}</td>
						<td>Email : ${orderDetail.consigneeDto.email}</td>
						<td>Mobile : ${orderDetail.consigneeDto.mob}</td>
						<td>Address Line1 : ${orderDetail.consigneeDto.addressLine1}</td>
						<td>Address Line2 :  ${orderDetail.consigneeDto.addressLine2}</td>
					</tr>
                 </c:if>
                 <c:forEach items="${orderDetail.ordersDtos}" var="orders" varStatus="status">
                 <tr>
						<td>Amount INR : ${orders.amount}</td>
						<td>Order Date : <c:set var="ordr_date"
								value="${orders.orderDate}" /> <fmt:formatDate type="both"
								value="${ordr_date}" /></td>
						<td>Item : ${orders.itemsDto.itemName}</td>
						<td>Status : ${orders.orderStatus}</td>
						<td>Qty :  ${orders.qty}</td>
					</tr>
					<tr>
						<td>Unit Price : ${orders.itemsDto.unitPrice}</td>
						<td>Mrp. : ${orders.itemsDto.mrp}</td>
					</tr>
                 </c:forEach>
                 
				</table>
			</div>
		</div> --%>
	</section>
	<!-- /.content -->
	<input type="hidden" id="userListUrl"
		value="${pageContext.request.contextPath}/itemTypeList">
</div>
<!-- /.content-wrapper -->
<script>
	$(function() {
		//Initialize Select2 Elements
		$('.select2').select2()
	});
	function insertData() {
		document.getElementById("catForm").submit();

	}
</script>