<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Validator;
use Carbon\Carbon;

use App\User;
use App\Specialization;
use App\Language;
use App\Reference;
use App\Jobinfo;
use App\Employeeeducation;
use App\Employeeotherinfo;

class JobController extends Controller
{
	public $successStatus = 200;

	public function getDashboard(){
		$jobs = Jobinfo::with(['user' => 
						function($q) {
							$q->with('companydetail');
						}])
						->where('status',1)
						->where('deadline', '>', Carbon::now()->toDateString())
						->whereHas('candidaterequirements', 
							function($query) {
								$query->where('degreename','like','%'. Employeeotherinfo::where('user_id', Auth::id())->pluck('keywords')->first() .'%');
							})
						->get();
		$result['success'] = true;
		$result['data'] = $jobs;
		return response()->json($result);
	}

	public function searchJobs(Request $request, Jobinfo $jobinfos){
		$job=$jobinfos->newQuery();
		$inputs=$request->all();

		if ($request->has('categories')){
			$job->where('status',1)
				->where('deadline', '>', Carbon::now()->toDateString())
				->whereHas('browsecategories', 
							function($query) use ($inputs) {
								$query->where('type','like','%'. $inputs['categories'] .'%');
							})
						->get();
		}

		if ($request->has('location')){
			$job->where('status',1)
				->where('deadline', '>', Carbon::now()->toDateString())
				->whereHas('addjobinfo', 
							function($query) use ($inputs) {
								$query->where('division','like','%'. $inputs['location'] .'%');
							})
						->get();
		}

		if ($request->has('keywords')){
			$job->where('status',1)
				->where('deadline', '>', Carbon::now()->toDateString())
				->whereHas('candidaterequirements', 
							function($query) use ($inputs) {
								$query->where('degreename','like','%'. $inputs['keywords'] .'%');
							})
						->get();
		}

		$result['success'] = true;
		$result['data'] = $job->paginate(10);
		return response()->json($result);
	}

	public function getNewJobs(){
		$jobs = Jobinfo::where('created_at',">",Carbon::now()->subDay(1))->paginate(10);
		$result['success'] = true;
		$result['data'] = $jobs;
		return response()->json($result);
	}

	public function getDeadlineTomorrowJobs(){
		$jobs = Jobinfo::where('deadline',Carbon::now()->addDay(1)->toDateString())->paginate(10);
		$result['success'] = true;
		$result['data'] = $jobs;
		return response()->json($result);
	}
}
