@extends('dashboard.base',['title' => 'editPro'])

@section('content')

    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Produit</h2>
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
    <form action="{{ route('produits.update',$produit->id) }}" method="POST">
        @csrf
        @method('PUT')
   
         <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                   <center> <strong>Nom</strong></center>
                    <input type="text" name="name" value="{{ $produit->name }}" class="form-control" placeholder="name">
                </div>
            </div>
			  <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <center><strong>Prix de base :</strong></center>
                    <input type="text"  class="form-control" name="base_price" placeholder="base_price" value="{{ $produit->base_price}}">
                </div>
            
                <div class="form-group">
                    <center><strong>Description:</strong></center>
                    <textarea class="form-control" style="height:150px" name="description" >{{ $produit->description }}</textarea>
                </div>
           
            
         
          <div >
                <center><a class="btn btn-primary" href="{{ route('produits.index') }}"> Retour</a>
				 <button type="submit" class="btn btn-primary">Envoyé</button></center>
            </div>
   
    </form>
       
@endsection
@section('javascript')

@endsection