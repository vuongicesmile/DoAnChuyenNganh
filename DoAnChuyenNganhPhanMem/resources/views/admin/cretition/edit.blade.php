@extends('layouts.layout')

@section('title')
    <title>Quản lý chuyên mục</title>
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
            <div class="col-xl-12">

                {{--Phan danh sach file va folder--}}

                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="{{route('cretitions.store')}}" method="post">
                                    @csrf
                                    <div class="form-group">
                                        <label>Tên chuyên mục</label>
                                        <input type="text" class="form-control " name="name"
                                               placeholder="Nhập tên chuyên mục" value="{{$menuFollowIdEdit->name}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Chọn danh mục cha </label>
                                        <select class="form-control" name="parent_id">
                                            <option value="0">Chọn danh mục  cha</option>
                                            {!! $optionSelect !!}

                                            //ep tu string thanh mang
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Nhập nội dung</label>
                                        <textarea name="contents" class="form-control tinymce_editor_init" rows="9">
                                            {{$menuFollowIdEdit->description}}
                                        </textarea>
                                    </div>

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>

                            </div>

                        </div>
                    </div>
                    {{--Phan danh sach file va folder--}}

                </div>

            </div>
        </div>
        </form>

        @endsection

        @section('js')
            <script src="{{asset('vendor/select2/select2.min.js')}}"></script>
            <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"></script>
            <script src="{{asset('admins/product/add/add.js')}}"></script>

@endsection
