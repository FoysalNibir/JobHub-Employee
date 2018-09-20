<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\User;
use App\Cv;

use Illuminate\Support\Facades\Auth; 
use Carbon\Carbon;
use Validator;

class FileController extends Controller
{
	public $successStatus = 200;

	public function postUpdateAvatar(Request $request){ 
		$user = Auth::user();
		$img_url = "avatar-".time().".jpg";
		$avatarDBName = 'users\\August2018\\'.$img_url;

		$image_string = $request->get('avatar');
		$image = base64_decode($image_string);

		$path = public_path() . "/storage/users/August2018/" . $img_url;
		$success = file_put_contents($path, $image);

		$user->avatar = $avatarDBName;
		$user->save();

		$result['success'] = true;
		$result['message'] = 'Avatar for the employee updated successfully';
		return response()->json($result);
	}

	public function postUploadCV(Request $request){ 
		$file_url = "cv-".time().".pdf";
		$fileDBname = '[{"download_link":"cvs\\September2018\\'.$file_url.'","original_name":"'.$file_url.'"}]';

		$file_string = $request->get('file');
		$file = base64_decode($file_string);

		$path = public_path() . "/storage/cvs/September2018/" . $file_url;
		$success = file_put_contents($path, $file);

		$cv = new Cv;
		$cv->cv=$fileDBname;
		$cv->user_id=Auth::id();
		$save = $cv->save();

		if ($save) {
			$result['success'] = true;
			$result['message'] = 'CV for the employee uploaded successfully';
			return response()->json($result);
		}

		$result['success'] = false;
		$result['message'] = 'CV for the employee cn not be uploaded';
		return response()->json($result);
	}

	public function postUpdateCV(Request $request){ 
		$file_url = "cv-".time().".pdf";
		$fileDBname = '[{"download_link":"cvs\\September2018\\'.$file_url.'","original_name":"'.$file_url.'"}]';

		$file_string = $request->get('file');
		$file = base64_decode($file_string);

		$path = public_path() . "/storage/cvs/September2018/" . $file_url;

		$cv_path = Cv::where('user_id', Auth::id())->pluck('cv')->first();
		$old_path = str_replace('"',"",public_path().'\\storage\\'.explode(':', explode(',', $cv_path)[0])[1]);
		unlink($old_path);

		$path = public_path() . "/storage/cvs/September2018/" . $file_url;
		$success = file_put_contents($path, $file);

		$cv = Cv::where('user_id', Auth::id())->first();
		$cv->cv=$fileDBname;
		$update = $cv->update();

		if ($update) {
			$result['success'] = true;
			$result['message'] = 'CV for the employee uploaded successfully';
			return response()->json($result);
		}

		$result['success'] = false;
		$result['message'] = 'CV for the employee cn not be uploaded';
		return response()->json($result);
	}

	public function getDeleteCV(){ 

		$cv_path = Cv::where('user_id', Auth::id())->pluck('cv')->first();
		$old_path = str_replace('"',"",public_path().'\\storage\\'.explode(':', explode(',', $cv_path)[0])[1]);
		unlink($old_path);

		$cv = Cv::where('user_id', Auth::id())->delete();

		$result['success'] = true;
		$result['message'] = 'CV deleted successfully';
		return response()->json($result);

	}
}
