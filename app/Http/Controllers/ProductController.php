<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\CustomAuthController;

class ProductController extends Controller
{
    public function home(){
        $prod = Product::all();
        $products = $prod->slice(0, 6);
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        echo "<script>console.log('Debug Objects: " . $products . "' );</script>";
        return view('welcome', compact('data'))->with('products', $products);
    }

    public function index(){
        $products = Product::all();
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        echo "<script>console.log('Debug Objects: " . $products . "' );</script>";
        return view('products.index', compact('data'))->with('products', $products);
    }

    public function create(){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        return view('products.create', compact('data'));
    }

    public function store(Request $request){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $input = $request->all();
        Product::create($input);
        return redirect('product')->with('flash_message', 'Product Added!');
    }

    public function show($id){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $product = Product::find($id);
        return view('products.show', compact('data'))->with('products', $product);
    }

    public function edit($id)
    {
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $product = Product::find($id);
        return view('products.edit', compact('data'))->with('products', $product);
    }

    public function update(Request $request, $id){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $product = Product::find($id);
        $input = $request->all();
        $product->update($input);
        return redirect('product')->with('flash_message', 'Product Updated!');
    }

    public function destroy($id){
        Product::destroy($id);
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        return redirect('product')->with('flash_message', 'Product Deleted!');
    }
}
