<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use App\Models\Student;

class StudentController extends Controller
{
    // REGISTER API
    public function register(Request $request)
    {
        // validation
        $request->validate([
            "name" => "required",
            "email" => "required|email|unique:students",
            "password" => "required|confirmed"
        ]);

        // create data
        $student = new Student();
        
        $student->name = $request->name;
        $student->email = $request->email;
        $student->password = Hash::make($request->password);
        $student->phone_no = isset($request->phone_no) ? $request->phone_no : "";

        $student->save();

        // send response
        return response()->json([
            "status" => 1,
            "message" => "Student registered succesfully"
        ]);
    }
    // LOGIN API
    public function login(Request $request)
    {
        // validation
        $request->validate([
            "email" => "required|email",
            "password" => "required"
        ]);

        // check student
        $student = Student::where("email", "=", $request->email)->first();

        if(isset($student->id)){

            if(Hash::check($request->password, $student->password)){

                // create a token
                $token = $student->createToken("auth_token")->plainTextToken;

                /// send a response
                return response()->json([
                    "status" => 1,
                    "message" => "Student logged in successfully",
                    "access_token" => $token
                ]);
            }else{

                return response()->json([
                    "status" => 0,
                    "message" => "Password didn't match"
                ], 404);
            }
        }else{

            return response()->json([
                "status" => 0,
                "message" => "Student not found"
            ], 404);
        }
    }// end -:- login
    // PROFILE API
    public function profile()
    {
        return response()->json([
            "status" => 1,
            "message" => "Student Profile information",
            "data" => auth()->user()
        ]);
    }

    // LOGOUT API
    public function logout()
    {
        auth()->user()->tokens()->delete();

        return response()->json([
            "status" => 1,
            "message" => "Student logged out successfully"
        ]);
    }
}// end -:- StudentController
