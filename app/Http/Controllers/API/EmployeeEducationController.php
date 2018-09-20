<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Validator;

use App\User;
use App\Employeeeducation;
use App\Employeetraining;
use App\Professionalqualification;

class EmployeeEducationController extends Controller
{	
	public $successStatus = 200;

    public function postEducationInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'level' => 'required|in:PSC/5 pass,JSC/JDC/8 pass,Secondary,Higher Secondary,Diploma,Bachelor/Honors,Masters,PhD',
			'major' => 'required',
			'institute' => 'required',
			'result' => 'required|in:First Division/Class,Second Division/Class,Third Division/Class,Grade,Appeared,Enrolled,Awarded,Do not mention,Pass',
			'hidecgpa' => 'numeric|between:0,1',
			'passingyear' => 'required|date_format:Y',
			'duration' => 'numeric'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$eduinfo = new Employeeeducation;
		$eduinfo->level=$request->get('level');
		$eduinfo->degreetitle=$request->get('degreetitle');
		$eduinfo->major=$request->get('major');
		$eduinfo->institute=$request->get('institute');
		$eduinfo->achievement=$request->get('achievement');
		$eduinfo->result=$request->get('result');
		$eduinfo->cgpa=$request->get('cgpa');
		$eduinfo->hidecgpa=$request->get('hidecgpa');
		$eduinfo->passingyear=$request->get('passingyear');
		$eduinfo->duration=$request->get('duration');
		$eduinfo->user_id=Auth::id();

		$save=$eduinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Education informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Education informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateEducationInfo(Request $request, $id){
		$validator = Validator::make($request->all(), [
			'level' => 'in:PSC/5 pass,JSC/JDC/8 pass,Secondary,Higher Secondary,Diploma,Bachelor/Honors,Masters,PhD',
			'result' => 'in:First Division/Class,Second Division/Class,Third Division/Class,Grade,Appeared,Enrolled,Awarded,Do not mention,Pass',
			'hidecgpa' => 'numeric|between:0,1',
			'passingyear' => 'date_format:Y',
			'duration' => 'numeric'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$eduinfo = Employeeeducation::where('id', $id)->where('user_id', Auth::id())->first();
		$eduinfo->level=$request->get('level', $eduinfo->level);
		$eduinfo->degreetitle=$request->get('degreetitle', $eduinfo->degreetitle);
		$eduinfo->major=$request->get('major', $eduinfo->major);
		$eduinfo->institute=$request->get('institute', $eduinfo->institute);
		$eduinfo->achievement=$request->get('achievement', $eduinfo->achievement);
		$eduinfo->result=$request->get('result', $eduinfo->result);
		$eduinfo->cgpa=$request->get('cgpa', $eduinfo->cgpa);
		$eduinfo->hidecgpa=$request->get('hidecgpa', $eduinfo->hidecgpa);
		$eduinfo->passingyear=$request->get('passingyear', $eduinfo->passingyear);
		$eduinfo->duration=$request->get('duration', $eduinfo->duration);

		$update=$eduinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Education informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Education informations for the employee can not be updated';
		return response()->json($result);
	}

	public function postTrainingInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'title' => 'required',
			'institute' => 'required',
			'country' => 'required',
			'year' => 'required|date_format:Y'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$traininginfo = new Employeetraining;
		$traininginfo->title=$request->get('title');
		$traininginfo->topics=$request->get('topics');
		$traininginfo->institute=$request->get('institute');
		$traininginfo->location=$request->get('location');
		$traininginfo->country=$request->get('country');
		$traininginfo->year=$request->get('year');
		$traininginfo->duration=$request->get('duration');
		$traininginfo->user_id=Auth::id();

		$save=$traininginfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Training informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Training informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateTrainingInfo(Request $request, $id){
		$validator = Validator::make($request->all(), [
			'year' => 'date_format:Y'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$traininginfo = Employeetraining::where('id', $id)->where('user_id', Auth::id())->first();
		$traininginfo->title=$request->get('title', $traininginfo->title);
		$traininginfo->topics=$request->get('topics', $traininginfo->topics);
		$traininginfo->institute=$request->get('institute', $traininginfo->institute);
		$traininginfo->location=$request->get('location', $traininginfo->location);
		$traininginfo->country=$request->get('country', $traininginfo->country);
		$traininginfo->year=$request->get('year', $traininginfo->year);
		$traininginfo->duration=$request->get('duration', $traininginfo->duration);

		$update=$traininginfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Training informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Training informations for the employee can not be updated';
		return response()->json($result);
	}

	public function postQualificationInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'certification' => 'required',
			'institute' => 'required',
			'fromdate' => 'required|date',
			'todate' => 'required|date'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$qualificationinfo = new Professionalqualification;
		$qualificationinfo->certification=$request->get('certification');
		$qualificationinfo->institute=$request->get('institute');
		$qualificationinfo->location=$request->get('location');
		$qualificationinfo->fromdate=$request->get('fromdate');
		$qualificationinfo->todate=$request->get('todate');
		$qualificationinfo->user_id=Auth::id();

		$save=$qualificationinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Professional qualification informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Professional qualification informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateQualificationInfo(Request $request, $id){
		$validator = Validator::make($request->all(), [
			'fromdate' => 'date',
			'todate' => 'date'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$qualificationinfo = Professionalqualification::where('id', $id)->where('user_id', Auth::id())->first();
		$qualificationinfo->certification=$request->get('certification', $qualificationinfo->certification);
		$qualificationinfo->institute=$request->get('institute', $qualificationinfo->institute);
		$qualificationinfo->location=$request->get('location', $qualificationinfo->location);
		$qualificationinfo->fromdate=$request->get('fromdate', $qualificationinfo->fromdate);
		$qualificationinfo->todate=$request->get('todate', $qualificationinfo->todate);

		$update=$qualificationinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Professional qualification informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Professional qualification informations for the employee can not be updated';
		return response()->json($result);
	}
}
