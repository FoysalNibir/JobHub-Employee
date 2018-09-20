<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Validator;

use App\User;
use App\Personalinfo;
use App\Employeecareerinfo;
use App\Preferredarea;
use App\Employeeotherinfo;
use App\Employeeeducation;

class EmployeePersonalController extends Controller
{
	public $successStatus = 200;

	public function postPersonalInfo(Request $request){
		$validator = Validator::make($request->all(), [
			'firstname' => 'required',
			'lastname' => 'required',
			'father' => 'required',
			'mother' => 'required',
			'dob' => 'required|date',
			'gender' => 'required|in:male,female,other',
			'religion' => 'required',
			'maritalstatus' => 'required|in:unmarried,married',
			'nationality' => 'required',
			'nid' => 'numeric',
			'presentaddress' => 'required',
			'permanentaddress' => 'required',
			'currentloc' => 'required',
			'mobile1' => ['required', 'regex:/(^[+]{1}[8]{2}[01]{1}[0-9]{9}|^[8]{2}[01]{1}[0-9]{9}|^[01]{2}[0-9]{9})$/'],
			'mobile2' => ['regex:/(^[+]{1}[8]{2}[01]{1}[0-9]{9}|^[8]{2}[01]{1}[0-9]{9}|^[01]{2}[0-9]{9})$/'],
			'altemail' => 'required|email'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$personalinfo = new Personalinfo;
		$personalinfo->firstname=$request->get('firstname');
		$personalinfo->lastname=$request->get('lastname');
		$personalinfo->father=$request->get('father');		
		$personalinfo->mother=$request->get('mother');
		$personalinfo->dob=$request->get('dob');
		$personalinfo->gender=$request->get('gender');
		$personalinfo->religion=$request->get('religion');
		$personalinfo->maritalstatus=$request->get('maritalstatus');
		$personalinfo->nationality=$request->get('nationality');
		$personalinfo->nid=$request->get('nid');
		$personalinfo->presentaddress=$request->get('presentaddress');
		$personalinfo->permanentaddress=$request->get('permanentaddress');
		$personalinfo->currentloc=$request->get('currentloc');
		$personalinfo->mobile1=$request->get('mobile1');
		$personalinfo->mobile2=$request->get('mobile2');
		$personalinfo->email=Auth::user()->email;
		$personalinfo->altemail=$request->get('altemail');
		$personalinfo->user_id=Auth::id();

		$save=$personalinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Personal Information for the employee created successfully';
			return response()->json($result);
		}

		$result['success'] = false;
		$result['message'] = 'Personal Information for the employee could not be created';		
		return response()->json($result);
	}

	public function postUpdatePersonalInfo(Request $request){
		$validator = Validator::make($request->all(), [
			'dob' => 'date',
			'gender' => 'in:male,female,other',
			'maritalstatus' => 'in:unmarried,married',
			'nid' => 'numeric',
			'mobile1' => ['regex:/(^[+]{1}[8]{2}[01]{1}[0-9]{9}|^[8]{2}[01]{1}[0-9]{9}|^[01]{2}[0-9]{9})$/'],
			'mobile2' => ['regex:/(^[+]{1}[8]{2}[01]{1}[0-9]{9}|^[8]{2}[01]{1}[0-9]{9}|^[01]{2}[0-9]{9})$/'],
			'altemail' => 'email'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$personalinfo=Personalinfo::where('user_id', Auth::id())->first();
		$personalinfo->firstname=$request->get('firstname', $personalinfo->firstname);
		$personalinfo->lastname=$request->get('lastname', $personalinfo->lastname);
		$personalinfo->father=$request->get('father', $personalinfo->father);	
		$personalinfo->mother=$request->get('mother', $personalinfo->mother);
		$personalinfo->dob=$request->get('dob', $personalinfo->dob);
		$personalinfo->gender=$request->get('gender', $personalinfo->gender);
		$personalinfo->religion=$request->get('religion', $personalinfo->religion);
		$personalinfo->maritalstatus=$request->get('maritalstatus', $personalinfo->maritalstatus);
		$personalinfo->nationality=$request->get('nationality', $personalinfo->nationality);
		$personalinfo->nid=$request->get('nid', $personalinfo->nid);
		$personalinfo->presentaddress=$request->get('presentaddress', $personalinfo->presentaddress);
		$personalinfo->permanentaddress=$request->get('permanentaddress', $personalinfo->permanentaddress);
		$personalinfo->currentloc=$request->get('currentloc', $personalinfo->currentloc);
		$personalinfo->mobile1=$request->get('mobile1', $personalinfo->mobile1);
		$personalinfo->mobile2=$request->get('mobile2', $personalinfo->mobile2);
		$personalinfo->altemail=$request->get('altemail', $personalinfo->altemail);

		$update=$personalinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Personal Information for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Personal Information for the employee can not be updated';
		return response()->json($result);
	}

	public function postCareerInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'presentsalary' => 'numeric',
			'expectedsalary' => 'numeric',
			'joblevel' => 'in:entry,mid,top',
			'jobnature' => 'in:fulltime,parttime,contractual,freelance,internship'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$careerinfo = new Employeecareerinfo;
		$careerinfo->objective=$request->get('objective');
		$careerinfo->presentsalary=$request->get('presentsalary');
		$careerinfo->expectedsalary=$request->get('expectedsalary');	
		$careerinfo->joblevel=$request->get('joblevel');
		$careerinfo->jobnature=$request->get('jobnature');
		$careerinfo->user_id=Auth::id();

		$save=$careerinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Career Information for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Career Information for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateCareerInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'presentsalary' => 'numeric',
			'expectedsalary' => 'numeric',
			'joblevel' => 'in:entry,mid,top',
			'jobnature' => 'in:fulltime,parttime,contractual,freelance,internship'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$careerinfo = Employeecareerinfo::where('user_id',Auth::id())->first();
		$careerinfo->objective=$request->get('objective', $careerinfo->objective);
		$careerinfo->presentsalary=$request->get('presentsalary', $careerinfo->presentsalary);
		$careerinfo->expectedsalary=$request->get('expectedsalary', $careerinfo->expectedsalary);	
		$careerinfo->joblevel=$request->get('joblevel', $careerinfo->joblevel);
		$careerinfo->jobnature=$request->get('jobnature', $careerinfo->jobnature);

		$update=$careerinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Career Information for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Career Information for the employee can not be updated';
		return response()->json($result);
	}

	public function postPreferredArea(Request $request){
		$validator = Validator::make($request->all(), [			
			'joblocinbd' => 'max:15',
			'joblocioutbd' => 'max:10'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$browsecategories = $request->get('browsecategories');

		$preferredarea = new Preferredarea;
		$preferredarea->joblocinbd=$request->get('joblocinbd');
		$preferredarea->joblocioutbd=$request->get('joblocioutbd');
		$preferredarea->preferredorg=$request->get('preferredorg');	
		$preferredarea->user_id=Auth::id();

		$save=$preferredarea->save();

		if($save){
			$preferredarea->browsecategories()->attach($browsecategories);
			$result['success'] = true;
			$result['message'] = 'Preferred Areas for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Preferred Areas for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdatePreferredArea(Request $request){
		$validator = Validator::make($request->all(), [			
			'joblocinbd' => 'max:15',
			'joblocioutbd' => 'max:10'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$preferredarea = Preferredarea::where('user_id', Auth::id())->first();
		$preferredarea->joblocinbd=$request->get('joblocinbd', $preferredarea->joblocinbd);
		$preferredarea->joblocioutbd=$request->get('joblocioutbd', $preferredarea->joblocioutbd);
		$preferredarea->preferredorg=$request->get('preferredorg', $preferredarea->preferredorg);

		$update=$preferredarea->update();

		if($update){
			if ($request->has('browsecategories')){
				$browsecategories = $request->get('browsecategories');
				$preferredarea->browsecategories()->sync($browsecategories);
			}
			$result['success'] = true;
			$result['message'] = 'Career Information for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Career Information for the employee can not be updated';
		return response()->json($result);
	}

	public function postOtherInfo(Request $request){
		$otherinfo = new Employeeotherinfo;
		$otherinfo->careersummary=$request->get('careersummary');
		$otherinfo->specialqualification=$request->get('specialqualification');
		$otherinfo->keywords=$request->get('keywords');	
		$otherinfo->user_id=Auth::id();

		$save=$otherinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Other informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Other informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateOtherInfo(Request $request){
		$otherinfo = Employeeotherinfo::where('user_id', Auth::id())->first();
		$otherinfo->careersummary=$request->get('careersummary', $otherinfo->careersummary);
		$otherinfo->specialqualification=$request->get('specialqualification', $otherinfo->specialqualification);
		$otherinfo->keywords=$request->get('keywords', $otherinfo->keywords);	

		$update=$otherinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Other informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Other informations for the employee can not be updated';
		return response()->json($result);
	}
}
