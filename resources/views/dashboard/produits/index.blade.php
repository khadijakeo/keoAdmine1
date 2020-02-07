@extends('dashboard.base')

@section('content')

    <div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title ">Produits</h4>
            
          </div>
   
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   </br></br></br>
   <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">
      

            <th><center>ID</center></th>
            <th><center>NAME</center></th>
            <th><center>Description</center></th>
             <th><center>Base Price</center></th>
            <th ><center>Action</center></th>
        
    </thead>
        @foreach ($produits as $produit)
        <tr>
            <td><center>{{ $produit->id }}</center></td>
            <td><center>{{ $produit->name }}</center></td>
            <td><center>{{ $produit->description }}</center></td>
            <td><center>{{ $produit->base_price }}</center></td>
            <td>
                   <center> <a class="btn btn-primary" href="{{ route('produits.edit',$produit->id) }}">Edit</a></center>
   
            </td>
        </tr>
        @endforeach
        

    </table>
</div>
</div>    </center>  
</div>
</div>
  

@endsection

@section('javascript')

@endsection