<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Resources\TeamsCollection;
use App\Teams;
use App\Players;
use App\Matches;
class TeamsController extends Controller
{
    public function index(){
        return new TeamsCollection(Teams::all());
    }

    public function players($id){
        $players['data'] = Players::where('teamId',$id)->get();
        if(Teams::where('id', $id)->exists()) {
            $team_name = Teams::where('id',$id)->first()->name;
            $players['team_name'] = array('name'=>$team_name);
        }else{
            $players['data'] = array();
            $players['team_name'] = array();
        }
        
        //return new TeamsCollection($players);
        
        return response()->json($players);
    }

    public function matches(){
        $matches['data'] = DB::table('teams as t1')
            ->join('matches', 't1.id', '=', 'matches.team1')
            ->join('teams', 'teams.id', '=', 'matches.team2')
            ->join('teams as tw', 'tw.id', '=', 'matches.winner')
            ->select(DB::raw('DATE_FORMAT(matches.matchDate, "%b %d, %Y") as matchDate'),'t1.name as teamFirst', 'teams.name as teamTwo','tw.name as teamWinner')
            ->get();
            //dd($matches);
            return response()->json($matches);
    }

    public function points(){
        $points['data'] = DB::table('teams as t1')
            ->leftJoin('matches', 't1.id', '=', 'matches.winner')
            ->select(DB::raw('count(matches.winner) as wins'),DB::raw('2 * count(matches.winner) as pts'),'t1.name as teamsName')
            ->groupBy('t1.name')
            ->get();
            return response()->json($points);
    }
}
