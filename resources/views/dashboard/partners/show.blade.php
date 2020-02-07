@extends('dashboard.base')

@section('content')

    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-right">
                <h2><center>{{ $partner->name}}</center></h2>
            </div>
          
        </div>
    </div>
   
    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Warning!</strong> Please check input field code<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
  <br><br><br><br><br><br>
    <form action="{{ route('partners.update',$partner->id) }}" method="POST">
        @csrf
        @method('PUT')
   
      <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                   <center> <strong>Nom</strong></center>
                    <input readonly type="text" name="name" value="{{ $partner->name }}" class="form-control" placeholder="name">
         

                    <center><strong>Currency :</strong></center>
                    <input readonly type="text"  class="form-control" name="currency" placeholder="currency" value="{{ $partner->currency}}">
              
                    <center><strong>VAT :</strong></center>
                    <input readonly type="text"  class="form-control" name="vat" placeholder="vat" value="{{ $partner->vat}}">
                </div>
          <div >
                <center><a class="btn btn-primary" href="{{ route('partners.index') }}"> Retour</a>
            </div>
     
   
    </form>
       
@endsection
@section('javascript')

@endsection