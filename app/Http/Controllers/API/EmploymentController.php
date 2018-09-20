<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Validator;

use App\User;
use App\Employment;
use App\Armyemployment;

class EmploymentController extends Controller
{
	public $successStatus = 200;

	public function postEmploymentInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'cname' => 'required',
			'cbusiness' => 'required',
			'designation' => 'required',
			'areaofexperiences' => 'required',
			'fromdate' => 'required|date',
			'todate' => 'date',
			'continuing' => 'numeric|between:0,1'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$employmentinfo = new Employment;
		$employmentinfo->cname=$request->get('cname');
		$employmentinfo->cbusiness=$request->get('cbusiness');
		$employmentinfo->designation=$request->get('designation');
		$employmentinfo->department=$request->get('department');
		$employmentinfo->areaofexperiences=$request->get('areaofexperiences');
		$employmentinfo->responsibilities=$request->get('responsibilities');
		$employmentinfo->clocation=$request->get('clocation');
		$employmentinfo->fromdate=$request->get('fromdate');
		$employmentinfo->todate=$request->get('todate');
		$employmentinfo->continuing=$request->get('continuing');
		$employmentinfo->user_id=Auth::id();

		$save=$employmentinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Employment informations for the employee created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Employment informations for the employee can not be created';
		return response()->json($result);
	}

	public function postUpdateEmploymentInfo(Request $request, $id){
		$validator = Validator::make($request->all(), [			
			'fromdate' => 'date',
			'todate' => 'date',
			'continuing' => 'numeric|between:0,1'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$employmentinfo = Employment::where('user_id', Auth::id())->where('id', $id)->first();
		$employmentinfo->cname=$request->get('cname', $employmentinfo->cname);
		$employmentinfo->cbusiness=$request->get('cbusiness', $employmentinfo->cbusiness);
		$employmentinfo->designation=$request->get('designation', $employmentinfo->designation);
		$employmentinfo->department=$request->get('department', $employmentinfo->department);
		$employmentinfo->areaofexperiences=$request->get('areaofexperiences', $employmentinfo->areaofexperiences);
		$employmentinfo->responsibilities=$request->get('responsibilities', $employmentinfo->responsibilities);
		$employmentinfo->clocation=$request->get('clocation', $employmentinfo->clocation);
		$employmentinfo->fromdate=$request->get('fromdate', $employmentinfo->fromdate);
		$employmentinfo->todate=$request->get('todate', $employmentinfo->todate);
		$employmentinfo->continuing=$request->get('continuing', $employmentinfo->continuing);

		$update=$employmentinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Employment informations for the employee updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Employment informations for the employee can not be updated';
		return response()->json($result);
	}

	public function postArmyEmploymentInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'baname' => 'required|in:BA,BSS,JSS,BSP,BJO,No',
			'type' => 'required|in:officer,jco,nco',
			'rank' => 'required|in:2Lt,Lt,Capt,Maj,Lt Col,Col,Brig Gen,Maj Gen,Lt Gen,Gen,Snk,L/cpl,Cpl,Sgt,WO,SWO,MWO,H/Lt,H/Capt',
			'arm' => 'required|in:AC,Arty,EB,BIR,Sigs,Engr,EME,Ord,ASC,AMC,AEC,CMP,ADC,AFNS,RVFC,ACC',
			'doc' => 'required|date',
			'dor' => 'required|date'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$baname = $request->get('baname');
		$bano = $request->get('bano');

		$armyemploymentinfo = new Armyemployment;
		$armyemploymentinfo->ba=$baname.$bano;
		$armyemploymentinfo->type=$request->get('type');
		$armyemploymentinfo->rank=$request->get('rank');
		$armyemploymentinfo->arm=$request->get('arm');
		$armyemploymentinfo->trade=$request->get('trade');
		$armyemploymentinfo->course=$request->get('course');
		$armyemploymentinfo->doc=$request->get('doc');
		$armyemploymentinfo->dor=$request->get('dor');
		$armyemploymentinfo->user_id=Auth::id();

		$save=$armyemploymentinfo->save();

		if($save){
			$result['success'] = true;
			$result['message'] = 'Employment informations for the Ex. Army Person created successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Employment informations for the Ex. Army Person can not be created';
		return response()->json($result);
	}

	public function postUpdateArmyEmploymentInfo(Request $request){
		$validator = Validator::make($request->all(), [			
			'baname' => 'in:BA,BSS,JSS,BSP,BJO,No',
			'type' => 'in:officer,jco,nco',
			'rank' => 'in:2Lt,Lt,Capt,Maj,Lt Col,Col,Brig Gen,Maj Gen,Lt Gen,Gen,Snk,L/cpl,Cpl,Sgt,WO,SWO,MWO,H/Lt,H/Capt',
			'arm' => 'in:AC,Arty,EB,BIR,Sigs,Engr,EME,Ord,ASC,AMC,AEC,CMP,ADC,AFNS,RVFC,ACC',
			'doc' => 'date',
			'dor' => 'date'
		]);

		if ($validator->fails()) {
			$result['success'] = false;
			$result['message'] = 'Invalid inputs';
			$result['error'] = $validator->errors();		
			return response()->json($result);
		}

		$armyemploymentinfo = Armyemployment::where('user_id', Auth::id())->first();

		if ($request->has('baname') || $request->has('baname')){
			$baname = $request->get('baname');
			$bano = $request->get('bano');
			$armyemploymentinfo->ba=$baname.$bano;
		}	
		
		$armyemploymentinfo->type=$request->get('type', $armyemploymentinfo->type);
		$armyemploymentinfo->rank=$request->get('rank', $armyemploymentinfo->rank);
		$armyemploymentinfo->arm=$request->get('arm', $armyemploymentinfo->arm);
		$armyemploymentinfo->trade=$request->get('trade', $armyemploymentinfo->trade);
		$armyemploymentinfo->course=$request->get('course', $armyemploymentinfo->course);
		$armyemploymentinfo->doc=$request->get('doc', $armyemploymentinfo->doc);
		$armyemploymentinfo->dor=$request->get('dor', $armyemploymentinfo->dor);
		$update=$armyemploymentinfo->update();

		if($update){
			$result['success'] = true;
			$result['message'] = 'Employment informations for the Ex. Army Person updated successfully';
			return response()->json($result);
		}
		$result['success'] = false;
		$result['message'] = 'Employment informations for the Ex. Army Person can not be updated';
		return response()->json($result);
	}
}
