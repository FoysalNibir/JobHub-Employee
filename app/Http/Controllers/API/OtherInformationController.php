<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Validator;

use App\User;
use App\Specialization;
use App\Language;
use App\Reference;

class OtherInformationController extends Controller
{
    public $successStatus = 200;

    public function postSpecializationInfo(Request $request){
		$specializationinfo = new Specialization;
		$specializationinfo->skills=$request->get('skills');
		$specializationinfo->skillsdescription=$request->get('skillsdescription');
		$specializationinfo->extracurricular=$request->get('extracurricular');
		$specializationinfo->user_id=Auth::id();

		$save=$specializationinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Specialization informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Specialization informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateSpecializationInfo(Request $request){
		$specializationinfo = Specialization::where('user_id', Auth::id())->first();
		$specializationinfo->skills=$request->get('skills', $specializationinfo->skills);
		$specializationinfo->skillsdescription=$request->get('skillsdescription', $specializationinfo->skillsdescription);
		$specializationinfo->extracurricular=$request->get('extracurricular', $specializationinfo->extracurricular);

		$update=$specializationinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Specialization informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Specialization informations for the employee can not be updated';
		return response()->json($result);
	}

	public function postLanguageInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'language' => 'required',
			'reading' => 'required|in:high,medium,low',
			'writing' => 'required|in:high,medium,low',
			'speaking' => 'required|in:high,medium,low'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$languageinfo = new Language;
		$languageinfo->language=$request->get('language');
		$languageinfo->reading=$request->get('reading');
		$languageinfo->writing=$request->get('writing');
		$languageinfo->speaking=$request->get('speaking');
		$languageinfo->user_id=Auth::id();

		$save=$languageinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Language proficiency informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Language proficiency informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateLanguageInfo(Request $request, $id){
		$validator = Validator::make($request->all(), [			
			'reading' => 'in:high,medium,low',
			'writing' => 'in:high,medium,low',
			'speaking' => 'in:high,medium,low'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$languageinfo = Language::where('user_id', Auth::id())->where('id', $id)->first();
		$languageinfo->language=$request->get('language', $languageinfo->language);
		$languageinfo->reading=$request->get('reading', $languageinfo->reading);
		$languageinfo->writing=$request->get('writing', $languageinfo->writing);
		$languageinfo->speaking=$request->get('speaking', $languageinfo->speaking);

		$update=$languageinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Language proficiency informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Language proficiency informations for the employee can not be updated';
		return response()->json($result);
	}

	public function postReferenceInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'name' => 'required',
			'organization' => 'required',
			'designation' => 'required',
			'mobile' => ['regex:/(^[+]{1}[8]{2}[01]{1}[0-9]{9}|^[8]{2}[01]{1}[0-9]{9}|^[01]{2}[0-9]{9})$/'],
			'email' => 'email',
			'relation' => 'in:relative,family or friend,academic,professional,others'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$reference = new Reference;
		$reference->name=$request->get('name');
		$reference->organization=$request->get('organization');
		$reference->designation=$request->get('designation');
		$reference->officephone=$request->get('officephone');
		$reference->resphone=$request->get('resphone');
		$reference->mobile=$request->get('mobile');
		$reference->email=$request->get('email');
		$reference->relation=$request->get('relation');
		$reference->address=$request->get('address');
		$reference->user_id=Auth::id();

		$save=$reference->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Reference informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Reference informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateReferenceInfo(Request $request, $id){
		$validator = Validator::make($request->all(), [			
			'mobile' => ['regex:/(^[+]{1}[8]{2}[01]{1}[0-9]{9}|^[8]{2}[01]{1}[0-9]{9}|^[01]{2}[0-9]{9})$/'],
			'email' => 'email',
			'relation' => 'in:relative,family or friend,academic,professional,others'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$reference = Reference::where('user_id', Auth::id())->where('id', $id)->first();
		$reference->name=$request->get('name', $reference->name);
		$reference->organization=$request->get('organization', $reference->organization);
		$reference->designation=$request->get('designation', $reference->designation);
		$reference->officephone=$request->get('officephone', $reference->officephone);
		$reference->resphone=$request->get('resphone', $reference->resphone);
		$reference->mobile=$request->get('mobile', $reference->mobile);
		$reference->email=$request->get('email', $reference->email);
		$reference->relation=$request->get('relation', $reference->relation);
		$reference->address=$request->get('address', $reference->address);

		$update=$reference->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Reference informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Reference informations for the employee can not be updated';
		return response()->json($result);
	}
}
