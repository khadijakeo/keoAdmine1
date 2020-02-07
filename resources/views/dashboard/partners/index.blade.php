@extends('dashboard.base')

@section('content')

    
   
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   </br></br></br>

   <script>

 


function myFunction() {

  var x = document.getElementById("myDIV");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}


</script>


<style>
#myDIV {
  /*width: 100%;
  padding: 10px 0;*/
  text-align: center;
  display: none;
}
</style>

<!--<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (window.getComputedStyle(x).display === "none") {
    x.style.display = "block";

  }
}
</script>
<style>
#myDIV {
  width: 100%;
  padding: 50px 0;
  text-align: center;
  display: none;
}
</style>-->
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title ">Partners</h4>
            
          


   <div class="card-body" >
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">

            <th><center>ID</center></th>
            <th><center>NAME</center></th>
            <th><center>CURRENCY</center></th>
             <th><center>VAT</center></th>
            <th ><center>Action</center></th>
        
                </thead>
        @foreach ($partners as $partner)
        <tr>
            <td><center>{{ $partner->id }}</center></td>
            <td><center>{{ $partner->name }}</center></td>
            <td><center>{{ $partner->currency }}</center></td>
            <td><center>{{ $partner->VAT }}</center></td>

            <td>


<center>
  <div class="dropdown">
  
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
    Action
  </button>
  <div class="dropdown-menu">
   <center> <a class="dropdown-item"  href="{{ route('partners.edit',$partner->id) }}"><span class="fa fa-life-ring"></span> Edit</a></center>
    <a class="dropdown-item" href="{{ route('partners.destroy',$partner->id) }} " method="POST"><span class="fa fa-wrench"></span> Delete</a>
    <a class="dropdown-item" onclick="myFunction();" value="{{ $partner->id }}" ><span class="fa fa-wrench"></span> show</a>
   
     @csrf
    @method('DELETE')
</center>
 </div>
</div>
</div>

       </td>
  </tr>
  <tr>
    <td colspan="5">
   <form action="{{ route('partners.update',$partner->id) }}" method="POST">
        @csrf
        @method('PUT')
      </form>

      
            <div class="pull-left" id="myDIV">

                   <center> <strong>Nom</strong></center>
                    <input readonly  type="text" name="name" value="{{ $partner->name }}" class="form-control" placeholder="name">
         

                    <center><strong>Currency :</strong></center>
                    <input readonly  type="text"  class="form-control" name="currency" placeholder="currency" value="{{ $partner->currency}}">
              
                    <center><strong>VAT :</strong></center>
                    <input readonly  type="text"  class="form-control" name="vat" placeholder="vat" value="{{ $partner->vat}}">
                </div>




          </td>   
        </tr>

        @endforeach
        
    </table>


</div>   
</div>
</div>
</div>
</div>
</div>
</div>
  

@endsection

@section('javascript')

@endsection