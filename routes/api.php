<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
	return $request->user();
});

Route::post('login', 'API\LogregController@login');
Route::post('register', 'API\LogregController@register');

Route::group(['middleware' => 'auth:api'], function(){

	Route::get('get-details', 'API\LogregController@getDetails');

	Route::post('personal/avatar', 'API\FileController@postUpdateAvatar');
	Route::post('personal/cv', 'API\FileController@postUploadCV');
	Route::post('personal/cv/update', 'API\FileController@postUpdateCV');
	Route::get('personal/cv/delete', 'API\FileController@getDeleteCV');

	Route::post('personal/info', 'API\EmployeePersonalController@postPersonalInfo');
	Route::post('personal/info/update', 'API\EmployeePersonalController@postUpdatePersonalInfo');
	Route::post('personal/career', 'API\EmployeePersonalController@postCareerInfo');
	Route::post('personal/career/update', 'API\EmployeePersonalController@postUpdateCareerInfo');
	Route::post('personal/preferredarea', 'API\EmployeePersonalController@postPreferredArea');
	Route::post('personal/preferredarea/update', 'API\EmployeePersonalController@postUpdatePreferredArea');
	Route::post('personal/otherinfo', 'API\EmployeePersonalController@postOtherInfo');
	Route::post('personal/otherinfo/update', 'API\EmployeePersonalController@postUpdateOtherInfo');

	Route::post('education/info', 'API\EmployeeEducationController@postEducationInfo');
	Route::post('education/info/update/{id}', 'API\EmployeeEducationController@postUpdateEducationInfo')->where('id', '[0-9]+');
	Route::post('education/training', 'API\EmployeeEducationController@postTrainingInfo');
	Route::post('education/training/update/{id}', 'API\EmployeeEducationController@postUpdateTrainingInfo')->where('id', '[0-9]+');
	Route::post('education/qualification', 'API\EmployeeEducationController@postQualificationInfo');
	Route::post('education/qualification/update/{id}', 'API\EmployeeEducationController@postUpdateQualificationInfo')->where('id', '[0-9]+');

	Route::post('employment/info', 'API\EmploymentController@postEmploymentInfo');
	Route::post('employment/info/update/{id}', 'API\EmploymentController@postUpdateEmploymentInfo')->where('id', '[0-9]+');
	Route::post('employment/armyinfo', 'API\EmploymentController@postArmyEmploymentInfo');
	Route::post('employment/armyinfo/update', 'API\EmploymentController@postUpdateArmyEmploymentInfo');

	Route::post('specialization/info', 'API\OtherInformationController@postSpecializationInfo');
	Route::post('specialization/info/update', 'API\OtherInformationController@postUpdateSpecializationInfo');
	Route::post('language/info', 'API\OtherInformationController@postLanguageInfo');
	Route::post('language/info/update/{id}', 'API\OtherInformationController@postUpdateLanguageInfo')->where('id', '[0-9]+');
	Route::post('reference/info', 'API\OtherInformationController@postReferenceInfo');
	Route::post('reference/info/update/{id}', 'API\OtherInformationController@postUpdateReferenceInfo')->where('id', '[0-9]+');

	Route::get('dashboard', 'API\JobController@getDashboard');
	Route::post('job/search', 'API\JobController@searchJobs');
	Route::get('job/search/new', 'API\JobController@getNewJobs');
	Route::get('job/search/deadtomorrow', 'API\JobController@getDeadlineTomorrowJobs');
});