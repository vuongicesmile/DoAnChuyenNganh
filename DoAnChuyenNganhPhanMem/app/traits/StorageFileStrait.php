<?php

namespace App\Traits;

use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;


trait StorageFileStrait
{
    public function createDirecrotory($feature_path)
    {
        $directory = Storage::makeDirectory(str_replace('/storage/', '', $feature_path));
        //root/tenduongdan
        return Storage::url($directory);
    }

    public function storageTraitUploadMultipe($file, $folderName)
    {
        $fileNameOrigin = $file->getClientOriginalName();
        //$fileNameHash = str_random(20) . '.' . $file->getClientOriginalExtension();


        $filePath = $file->storeAs($folderName, $fileNameOrigin);

        $dataUploadTrait = [
            'file_name' => $fileNameOrigin,
            'file_path' => Storage::url($filePath),
            'size' => filesize($file)
        ];

        return $dataUploadTrait;

        return null;
    }

    public function storageTraitMoveFile($oldfile, $newfile)
    {
        $path = Storage::move($oldfile, $newfile);
        return Storage::url($path);
    }
}
