<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Http\Controllers;

use App\Attendance;

/**
 * Description of AdminController
 *
 * @author abdullah_alfar
 */
class AdminController extends Controller{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('admin.home');
    }
    
    public function report() {
        $attendances = Attendance::orderBy('id','desc')->get();
        return view('admin.report', compact('attendances'));
        dd($attendances);
    }
}
