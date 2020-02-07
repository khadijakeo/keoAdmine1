@extends('dashboard.base')

@section('content')

<div class="row">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-3">Add a Partner</h1>
  <div>
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('partners.store') }}">
          @csrf
          <div class="form-group">    
              <label for="Name">Name</label>
              <input type="text" class="form-control" name="name"/>
          </div>

          <div class="form-group">
              <label for="Currency">Currency</label>
              <input type="text" class="form-control" name="currency"/>
          </div>

          <div class="form-group">
              <label for="VAT">VAT</label>
              <input type="text" class="form-control" name="VAT"/>
          </div>
          
         
          </div>                         
          <button type="submit" class="btn btn-primary-outline">Add Partner</button>
      </form>
  </div>
</div>
</div>
@endsection