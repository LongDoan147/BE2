<?php

namespace App\Http\Middleware;

use Closure;

class CheckAge
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = $request->input('user');
        $pass = $request->input('pass');
        if($user == 'doanho147@gmail.com' && $pass == '0522943403aA'){
            return redirect('/admin/true');
        }
        return redirect('/login');
    }
}
