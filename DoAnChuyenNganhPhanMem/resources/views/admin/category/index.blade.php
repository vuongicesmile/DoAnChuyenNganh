@extends('layouts.layout')

@section('title')
    <title>Quản lý chuyên mục</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('vendor/select2/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('admins/product/add/add.css')}}">
@endsection


@section('content')
    <div class="content">
        <div class="page-header d-flex justify-content-between">
            <h2>Quản lý chuyên mục</h2>
            <a href="#" class="files-toggler">
                <i class="ti-menu"></i>
            </a>
        </div>

        <div class="row">
            <div class="col-xl-9">
                <div class="content-title mt-0">
                </div>
                <div class="d-md-flex justify-content-between mb-4">
                    <ul class="list-inline mb-3">

                        <li class="list-inline-item mb-0">
                        </li>
                    </ul>
                    <div id="file-actions" class="d-none">
                        <ul class="list-inline">

                            <li class="list-inline-item mb-0">
                                <button type="submit" class="btn btn-primary">Đồng ý</button>
                            </li>


                            <li class="list-inline-item mb-0">
                                <div class="form-group p-1 border border-primary rounded">
                                    <input type="radio" value="checkDownload" name="checkCheck">
                                    <lable>Tải xuống</lable>
                                    <i class="ti-download"></i>
                                </div>
                            </li>

                            <li class="list-inline-item mb-0">
                                <a data-url="" href="#"
                                   class="btn btn-outline-danger"
                                   data-toggle="tooltip" title="Xóa" id="btn_customCheckDelete">
                                    <i class="ti-trash"></i>
                                </a>
                            </li>


                        </ul>
                    </div>
                </div>
                {{--Phan danh sach file va folder--}}

                <div class="table-responsive">
                    <div class="col-md-12">
                        <a href="{{route('categories.create')}}" class="btn btn-success">Thêm mới </a>
                    </div>
                    <div class="col-lg-12">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Mô tả</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($categories as $items)
                                <tr>
                                    <th scope="row">{{$items->id}}</th>
                                    <td>{{$items->name}}</td>
                                    <td>{{$items->description}}</td>
                                    {{-- 2 nut--}}
                                    <td><a href="{{route('categories.edit',['id'=> $items->id ])}}" class="btn btn-success">Update</a></td>
                                    <td><a href="" class="btn btn-danger">Delete</a></td>
                                </tr>
                            </tbody>
                            @endforeach
                        </table>
                    </div>
                </div>
                {{--Phan danh sach file va folder--}}

            </div>

        </div>
    </div>
    </form>

@endsection

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
@endsection
