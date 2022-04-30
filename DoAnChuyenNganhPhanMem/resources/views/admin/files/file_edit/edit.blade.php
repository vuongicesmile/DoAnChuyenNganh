@extends('layouts.layout')

@section('title')
    <title>Edit File</title>
@endsection

@section('js')
    {{$parentid = 0}}
    @if(isset($file_edit)) {{$parentid = $file_edit->parent_id}}@endif
    <script>
        let jsonDataViewParentId = {
            'data': [
                {
                    'id': '0',
                    'text': 'Root',
                    'type': 'folder',
                    'children': [
                            @foreach($listFolder as $folder)
                            @if($folder->parent_id == 0)
                        {
                            'id': '{{$folder->id}}',
                            'text': '{{$folder->name}}',
                            'type': 'folder',
                            @if($folder->id == $parentid)
                            'state': {
                                'opened': true,
                                'selected': true
                            },
                            @endif
                            @include('admin.files.file_edit.rootedit',['folder'=>$folder,'parentid'=>$parentid])
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
        <form class="col-md-6" action="{{route('folder.update_file',['id'=>$file_edit->id])}}" method="post"
              enctype="multipart/form-data">
            @csrf
            <div class="mb-12">
                <label for="info">ID người đang tạo :  {{auth()->id()}}</label>

            </div>

            <div class="mb-12">
                <label class="form-label">Tên file</label>
                <input name="name" type="text" class="form-control" value="{{str_replace('.'.$file_edit->extenstion,'',$file_edit->name)}}">

            </div>
            <div class="mb-12">
                <label class="form-label">Nơi lưu:  {{$file_edit->feature_path}}</label>
            </div>
            <div class="mb-12">
                <label class="form-label">Chọn nơi lưu mới</label>
                <div id="files_parent_id" name="parent_id"></div>
            </div>
            <div class="mb-12">
                <label class="form-label">Parent_id được chọn</label>
                <input id="parent_id" name="parent_id" type="text" class="form-control" value="{{$file_edit->parent_id}}">
            </div>
            <div class="mb-12">
                <label>Nhập nội dung tài liệu cần quản lý</label>
                <textarea name="contents" class="form-control tinymce_editor_init" rows="9">
                    value="{{$file_edit->description}}
                                </textarea>

            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

@endsection
