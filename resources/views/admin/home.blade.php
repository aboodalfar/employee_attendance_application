@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading"></div>

                <div class="panel-body">
                   
                    @if ($message = Session::get('success'))

                    <div class="alert alert-success alert-block">

                        <button type="button" class="close" data-dismiss="alert">×</button>	

                        <strong>{{ $message }}</strong>

                    </div>

                    @endif

                        
                        <div class="container">

                            <a  href="{{route('register-employee')}}" class="btn btn-dark">
                              &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Register employee&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;         
                            </a>
                            <br/><br/>
                            <a  href="{{route('report')}}" class="btn btn-primary">
                              &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Report&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;        
                            </a>
                        </div>

                      

                </div>
            </div>
        </div>
    </div>
</div>
@endsection


