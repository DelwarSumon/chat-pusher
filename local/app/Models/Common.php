<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Common extends Model
{
    // use HasFactory;
    protected $table = "just_form";


    // public function save_just_form($data)
    // {
    //     DB::table('just_form')->insert($data);
    // }

    // public function update_just_form($id, $data)
    // {
    //     DB::table('just_form')->where('id', $id)->update($data);
    // }
    
    // public function just_form_list()
    // {
    //     DB::table('just_form')->get();
    // }
}
