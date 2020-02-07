<?php

namespace App\Http\Controllers;

use App\Partner;
use Illuminate\Http\Request;

class PartnerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function index()
    {
        $partners = Partner::latest()->paginate(5);
  
        return view('dashboard.partners.index',compact('partners'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       view('dashboard.partners.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'currency' => 'required',
            'vat' => 'required',

        ]);
  
        partner::create($request->all());
   
        return redirect()->route('dashboard.partners.index')
                        ->with('success','Partner created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Produit  $produit
     * @return \Illuminate\Http\Response
     */
    public function show(Partner $partner)
    {
               return view('dashboard.partners.show',compact('partner'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Produit  $produit
     * @return \Illuminate\Http\Response
     */
    public function edit(Partner $partner)
    {
 return view('dashboard.partners.edit',compact('partner'));    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Produit  $produit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Partner $partner)
    {
        $request->validate([
            'name' => 'required',
            'currency' => 'required',
            'vat'=>'required',
        ]);
  
        $partner->update($request->all());
  
        return redirect()->route('partners.index')
                        ->with('success','Partner updated successfully');    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Produit  $produit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Partner $partner)
    {
            $partner->delete();
  
         return redirect()->route('dashboard.partners.index')
                        ->with('success','Partner deleted successfully');  
    }

    
}
