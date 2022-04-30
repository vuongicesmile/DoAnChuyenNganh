<?php

namespace App\Http\Controllers;

use App\Components\MenuRecursive;
use App\FileManager;
use Illuminate\Http\Request;

class CretitionController extends Controller
{
    //
    private $menuRecursive;
    private $cretition;

    public function __construct(MenuRecursive $menuRecursive, FileManager $cretition)
    {
        $this->menuRecursive = $menuRecursive;
        $this->cretition = $cretition;
    }

    //
    public function index()
    {
        // lay $cretition
        $cretition = $this->cretition->where('parent_id', '>', '0')->latest()->get();
        return view('admin.cretition.index', compact('cretition'));
    }

    public function create()
    {
        $optionSelect = $this->menuRecursive->menuRecursiveAdd();
        return view('admin.cretition.add', compact('optionSelect'));
    }

    public function store(Request $request)
    {
        $this->cretition->create([
            'name' => $request->name,
            'feature_path' => '/storage/root/' . $request->name,
            'type' => 'folder',
            'extenstion' => NULL,
            'parent_id' => $request->parent_id,
            'user_id' => auth()->id(),
            'size' => 0,
            'description' => $request->contents
        ]);
        return redirect()->route('cretitions.index');
    }
    public function edit($id,Request $request)
    {
        $menuFollowIdEdit = $this->cretition->find($id);
        $optionSelect =$this->menuRecursive->menuRecursiveEdit($menuFollowIdEdit->parent_id);
        return view('admin.cretition.edit',compact('optionSelect','menuFollowIdEdit'));
    }

    public function delete($id)
    {
        $this->cretition->find($id)->delete();
        return redirect()->route('cretitions.index');
    }
}
