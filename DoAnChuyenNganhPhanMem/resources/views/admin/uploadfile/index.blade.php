@extends('layouts.layout')

@section('title')
    <title>Tải lên</title>
@endsection

@section('js')
    {{$parentid = 0}}
    @if(isset($root_parent)) {{$parentid = $root_parent->id}}@endif

    <script>
        let jsonDataView = {
            'data': [
                {
                    'text': 'Root',
                    'type': 'folder',
                    "a_attr": {
                        "href": "{{route('file.selected',['id'=> 0])}}"
                    },
                    'children': [
                            @foreach($listFolder as $folder)
                            @if($folder->parent_id == 0)
                        {
                            'text': '{{$folder->name}}',
                            'type': 'folder',
                            @if($folder->id == $parentid)
                            'state': {
                                'opened': true,
                                'selected': true
                            },
                            @endif
                            "a_attr": {
                                "href": "{{route('file.selected',['id'=>$folder->id])}}"
                            },
                            @include('admin.uploadfile.root',['folder'=>$folder,'parentid'=>$parentid])
                        },
                        @endif
                        @endforeach
                    ]
                }
            ],
            themes: {
                dots: false
            }
        };


    </script>

    <script src="{{asset('file-manager-template/assets/js/sweetalert2@10.js')}}"></script>
    <script src="{{asset('admins/main.js')}}"></script>
    <script src="{{asset('vendor/select2/select2.min.js')}}"></script>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"></script>
    <script src="{{asset('admins/product/add/add.js')}}"></script>


@endsection
@section('content')

    <div class="content">
        <div class="page-header d-flex justify-content-between">
            <h2>Files</h2>
            <a href="#" class="files-toggler">
                <i class="ti-menu"></i>
            </a>
        </div>

        <div class="row">
            <div class="col-xl-3 files-sidebar">
                <div class="card border-0">
                    <h6 class="card-title">Chọn nơi lưu file</h6>
                    {{--Cay thu muc--}}
                    <div id="files"></div>
                    {{--Cay thu muc--}}

                </div>
            </div>
            <div class="col-xl-9">
                <div class="content-title mt-0">
                    <h4>{{(isset($root_parent))?str_replace('/storage/app','',$root_parent->feature_path):'/root' }}</h4>
                </div>

                {{--Form them file--}}

                <form action="{{route('file.upload',['id'=> $parentid])}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="info">ID người đang tạo :  {{auth()->id()}}</label>
{{--                        <label for="info">Người đang tạo :  {{auth()->name()}}</label>--}}
{{--                        <label for="info">Người đang tạo :  {{auth()->email()}}</label>--}}
                    </div>
                    <div class="form-group">
                        <label>Tên tài liệu cần quản lý</label>
                        <input type="text" class="form-control " name="name"
                               placeholder="Nhập tên tài liệu" value="">
                    </div>
                    <div class="form-group">
                        <label>Nhập nội dung tài liệu cần quản lý</label>
                        <textarea name="contents" class="form-control tinymce_editor_init" rows="9">
                                </textarea></div>
                    <div class="form-group" style="margin-left: 38px;">
                        <label for="created_at">Ngày tạo:</label>
                        <input type="date" id="created_at" name="created_at">
                    </div>
                    <div class="form-group">
                        <label for="updated_at">Ngày chỉnh sửa:</label>
                        <input type="date" id="updated_at" name="updated_at">
                    </div>
                    <div class="form-group">
                        <label>Upload file</label>
                        <input id="files_upload" type="file" multiple name="files_upload[]" class="input-group">
                        <small class="form-text text-muted">Chọn file để up load không được quá 40 MB</small>
                    </div>

                    <button type="submit" class="btn btn-primary">Upload</button>
                </form>
                {{--Form them file--}}
            </div>
        </div>
    </div>

@endsection

