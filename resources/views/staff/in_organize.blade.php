@extends('layout.staff_layout')
@section('title')
Staff
@endsection
@section('css')
@endsection
@section('content')
<style type="text/css">
	
	table, td, th {    
		border: 1px solid #ddd;
		text-align: center;
	}

	table {
		border-collapse: collapse;
		width: 90%;
	}

	th, td {
		padding: 10px;
	}
</style>
<section>
	<div >
		<div class="row">
			<h3>Organization Information</h3>
		</div>	
		<div class="row">
			<div class="col l6 m6 s12">
				<div class="input-field" style="">
					<i class="material-icons prefix">search</i>
					<input id="icon_prefix" type="text" class="validate">
					<label for="icon_prefix">Search</label>
				</div>

			</div>
		</div>
	</div>
</section>
<section>
	<table class="striped">	
		<thead>
			<tr>
				<th data-field="ora">Organizetion Name</th>
				<th data-field="adviser">Adviser</th>
				<th data-field="manage">	</th>
			</tr>
		</thead>

		<tbody >
			<tr class="jsgrid-alt-row">
				<td style="width: 150px;">PSU PIX</td>
				<td style="width: 150px;">Dr.Adisak Intana</td>
				<td style="width: 50px;">
					<a href=""><i class="Tiny material-icons ">mode_edit</i></a>
					<a href=""><i class="Tiny material-icons " style="color: red">delete</i></a>
				</td>

			</tr>

			<tr class="jsgrid-alt-row">
				<td style="width: 150px;">Flower</td>
				<td style="width: 150px;">Aj.Jamikorn Hiranrat</td>
				<td style="width: 50px;">
					<a href=""><i class="Tiny material-icons ">mode_edit</i></a>
					<a href=""><i class="Tiny material-icons " style="color: red">delete</i></a>
				</td>

			</tr>

			<tr class="jsgrid-alt-row">
				<td style="width: 150px;">Software Gang</td>
				<td style="width: 150px;">Dr.Aziz Nanthaamornphong</td>
				<td style="width: 50px;">
					<a href=""><i class="Tiny material-icons ">mode_edit</i></a>
					<a href=""><i class="Tiny material-icons " style="color: red">delete</i></a>
				</td>
			</tr>

			<tr class="jsgrid-alt-row">
				<td style="width: 150px;">PSU PIX</td>
				<td style="width: 150px;">Korawit Prutsachainimmit</td>
				<td style="width: 50px;">
					<a href=""><i class="Tiny material-icons ">mode_edit</i></a>
					<a href=""><i class="Tiny material-icons " style="color: red">delete</i></a>
				</td>
			</tr>
		</tbody>
	</table>
</section>
@endsection
@section('js')	
@endsection