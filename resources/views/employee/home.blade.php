@extends('layouts.app')
@section('content')
<style>

    a.disabled {
        pointer-events: none;
        cursor: default;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">Todays Attendence</div>

                <div class="panel-body">
                    @if ($message = Session::get('success'))

                    <div class="alert alert-success alert-block">

                        <button type="button" class="close" data-dismiss="alert">×</button>	

                        <strong>{{ $message }}</strong>

                    </div>

                    @endif

                    <p style="font-size:12px;"><b>Note:</b>&nbsp;&nbsp; Please use your office system to Punch In/Out but if you forgot or<br>
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp; want to work from home then E-mail at hybridlogics@gmail.com<br>
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;  for Punch In/Out timing.<br><br><br></p>

                    <div class="container">

                        <a  href="{{route('check-in')}}" class="@if($user && $user->check_in)disabled @endif btn btn-success">
                            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Check In&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;         
                        </a>



                        <a  href="{{route('check-out')}}" class="@if($user && $user->check_out)disabled @endif btn btn-success">
                            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Check Out&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</a>
                    </div>



                </div>
            </div>
        </div>
    </div>
</div>
@endsection


