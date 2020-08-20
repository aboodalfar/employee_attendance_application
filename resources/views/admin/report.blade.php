@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">Todays Attendence</div>
                <div class="panel-body">
                    <table class="table" id="example">
                        <thead>
                          <th>Employee NO</th>
                          <th>Date</th>
                          <th>Check In</th>
                          <th>Check Out</th>
                        </thead>
                        <tbody>
                            @foreach($attendances as $attendance)
                            <tr>
                                <td>{{$attendance->employee_no}}</td>
                                <td>{{$attendance->created_at->format('j F, Y')}}</td>
                                <td>{{$attendance->check_in->format('H:i')}}</td>
                                <td>@if($attendance->check_out){{$attendance->check_out->format('H:i')}}@endif</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection   
@section('js')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  

<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script>
      
   $(document).ready(function() {
       $.noConflict();
        $('#example thead tr').clone(true).appendTo( '#example thead' );
    $('#example thead tr:eq(1) th').each( function (i) {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
 
        $( 'input', this ).on( 'keyup change', function () {
            if ( table.column(i).search() !== this.value ) {
                table
                    .column(i)
                    .search( this.value )
                    .draw();
            }
        } );
    } );
    var table = $('#example').DataTable( {
        orderCellsTop: true,
        fixedHeader: true
    } );
} );
</script> 
@endsection 