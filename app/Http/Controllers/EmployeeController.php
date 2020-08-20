<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Http\Controllers;

use App\Attendance;

/**
 * Description of EmployeeController
 *
 * @author abdullah_alfar
 */
class EmployeeController extends Controller{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = Attendance::today()->user(auth()->user()->employee_no)->first();
        return view('employee.home', compact('user'));
    }
    
    /**
     * check in
     * @return type
     */
    public function check_in() {
        $attendance = new Attendance();
        $attendance->check_in = date('Y-m-d H:i:s');
        $attendance->employee_no = auth()->user()->employee_no;
        $attendance->save();
        return back()->with('success','check in successfully!');
    }
    
    /**
     * check out
     * @return type
     */
    public function check_out() {
        $attendance = Attendance::today()->user(auth()->user()->employee_no)->first();
        $attendance->check_out = date('Y-m-d H:i:s');
        $attendance->save();
        return back()->with('success','check out successfully!');
    }
}
