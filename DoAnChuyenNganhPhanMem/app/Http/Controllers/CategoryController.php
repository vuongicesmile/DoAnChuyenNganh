<?php

namespace App\Http\Controllers;

use App\Category;
use App\FileManager;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CategoryController extends Controller
{
    private $category;

    //khởi tạo đối tượng
    public function __construct(FileManager $category)
    {
        $this->category = $category;
    }

    //
    public function index()
    {
        // lay category
        $categories = $this->category->where('parent_id', 0)->get();
        return view('admin.category.index', compact('categories'));
    }

    public function create()
    {
        return view('admin.category.add');
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $dataCategoryCreate = [
                'name' => $request->name,
                'feature_path' => '/storage/root/' . $request->name,
                'type' => 'folder',
                'extenstion' => NULL,
                'parent_id' => 0,
                'user_id' => auth()->id(),
                'size' => 0,
                'description' => $request->contents
            ];
            // insert data to file_manager table
            $this->category->create($dataCategoryCreate);
            DB::commit();
            return redirect()->route('categories.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message' . $exception->getMessage() . '---Line :' . $exception->getLine());
        }
    }

    public function edit($id){
        $category = $this->category->find($id);
        return view('admin.category.edit',compact('category'));
    }

    public function delete($id)
    {
        $this->category->find($id)->delete();
        return redirect()->route('categories.index');

    }

    public function update($id,Request $request)
    {
        $this->category->find($id)->update([
            'name' => $request->name,
            'feature_path' => '/storage/root/' . $request->name,
            'type' => 'folder',
            'extenstion' => NULL,
            'parent_id' => 0,
            'user_id' => auth()->id(),
            'size' => 0,
            'description' => $request->contents
        ]);
        return redirect()->route('categories.index');
    }
}
