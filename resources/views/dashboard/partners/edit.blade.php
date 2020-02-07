@extends('dashboard.base')

@section('content')

    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Partner</h2>
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
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                   <center> <strong>Nom</strong></center>
                    <input type="text" name="name" value="{{ $partner->name }}" class="form-control" placeholder="name">
                </div>
            </div>
			  <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <center><strong>Currency :</strong></center>
                    <input type="text"  class="form-control" name="currency" placeholder="currency" value="{{ $partner->currency}}">
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <center><strong>VAT :</strong></center>
                    <input type="text"  class="form-control" name="vat" placeholder="vat" value="{{ $partner->VAT}}">
                </div>
          <div >
                <center><a class="btn btn-primary" href="{{ route('partners.index') }}"> Retour</a>
				 <button type="submit" class="btn btn-primary">Envoyé</button></center>
            </div>
   
    </form>
       
@endsection
@section('javascript')

@endsection